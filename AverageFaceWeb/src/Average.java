import org.python.util.PythonInterpreter;

import javax.imageio.ImageIO;
import java.awt.*;
import java.io.*;

public class Average {
    private Image outputImage;
    private String imageName;

    private String cmdStr_Split;
    private String cmdStr_FaceLandMark = "python scripts/face_landmark_detection.py input_data/team_splited";
    private String cmdStr_FaceGeneration = "python scripts/average_face_generation.py input_data/team_splited" +
            " output_data/result.jpg";

    public Average(String imageName){
        this.imageName = imageName;
        this.setCmdStr_Split(this.imageName);
    }

    public void generateFace(){

        int result;
        Process proc;

        PythonInterpreter interpreter = new PythonInterpreter();
        try {

            InputStream splitFace = new FileInputStream("/scripts/splitfaces.py");
            InputStream faceLandmark = new FileInputStream("face_landmark_detection.py");
            InputStream averageFace = new FileInputStream("average_face_generation.py");

            // 定义缓冲区、正常结果输出流、错误信息输出流
            byte[] buffer = new byte[1024];
            ByteArrayOutputStream outStream = new ByteArrayOutputStream();
            ByteArrayOutputStream outerrStream = new ByteArrayOutputStream();

            try {
                proc = Runtime.getRuntime().exec(this.getCmdStr_Split());
                InputStream errStream = proc.getErrorStream();
                InputStream stream = proc.getInputStream();

                // 流读取与写入
                int len = -1;
                while ((len = errStream.read(buffer)) != -1) {
                    outerrStream.write(buffer, 0, len);
                }while ((len = stream.read(buffer)) != -1) {
                    outStream.write(buffer, 0, len);
                }
                proc.waitFor();// 等待命令执行完成

                // 打印流信息
                System.out.println(outStream.toString());
                System.out.println(outerrStream.toString());

                result = Integer.parseInt(outStream.toString());
            } catch (Exception e) {
                e.printStackTrace();
            }

        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        File file = new File("/output_data/result.jpg");
        try {
            Image image = ImageIO.read(file);
            this.setOutputImage(image);
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void setOutputImage(Image outputImage) {
        this.outputImage = outputImage;
    }

    public Image getOutputImage() {
        return outputImage;
    }

    public void setCmdStr_Split(String cmdStr_Split) {
        this.cmdStr_Split = "python /scripts/splitfaces.py input_data/team/"+ cmdStr_Split + "input_data/team_splited";
    }

    public String getCmdStr_Split() {
        return cmdStr_Split;
    }

    public String getCmdStr_FaceGeneration() {
        return cmdStr_FaceGeneration;
    }

    public String getCmdStr_FaceLandMark() {
        return cmdStr_FaceLandMark;
    }
}
