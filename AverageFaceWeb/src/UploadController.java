import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

@Controller
@RequestMapping("/upload")


public class UploadController {
    private String imageName;

    //上传图片
    @RequestMapping(value="/image/{type}",method = RequestMethod.POST)
    @ResponseBody
    public Map<String,Object> imgae(MultipartFile file, HttpServletRequest request, @PathVariable String type){
        Map<String,Object> map = new HashMap<String,Object>();
        String path = request.getSession().getServletContext().getRealPath("\\upload\\"+type+"\\");
        String image = null;
        try {
            image = uploadFile(file,path);
            map.put("code",0);
            map.put("image",image);
        } catch (IOException e) {
            e.printStackTrace();
            map.put("code",1);
        }

        Average average = new Average(this.getImageName());
        average.generateFace();


        return map;
    }

    public String uploadFile(MultipartFile file, String path) throws IOException{
        String name = file.getOriginalFilename();//上传文件的真实名称
        String suffixName = name.substring(name.lastIndexOf("."));//获取后缀名
        String hash = Integer.toHexString(new Random().nextInt());//自定义随机数（字母+数字）作为文件名
        String filename = hash+ suffixName;
        File tempFile = new File(path,filename);
        if(!tempFile.getParentFile().exists()){
            tempFile.getParentFile().mkdir();
        }
        if(tempFile.exists()){
            tempFile.delete();
        }
        tempFile.createNewFile();
        file.transferTo(tempFile);
        this.setImageName(filename);
        return tempFile.getName();
    }

    public void setImageName(String imageName) {
        this.imageName = imageName;
    }

    public String getImageName() {
        return imageName;
    }

}
