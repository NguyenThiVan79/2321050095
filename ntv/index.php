<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> php - Buổi 1</title>
</head>
<body>
    <?php 
    // 1. cú pháp in ra màn hình 
    echo "Hello World! <br>";

    echo "php <br>";
    //2. biến
    // cú pháp: $ + tên biến = giá trị của bién;
    $ten = " Nguyen Van";
    $tuoi = 20;
    echo "xin chào " . $ten . " ". $tuoi . " tuổi";// nối chuỗi dùng .
    //3. hằng
    define("soPi","3.14");// define("tên hằng "," value")
    echo "<br>" . soPi . "<br>";

    // 4. phân biênnj ' ' và " "
     echo '$ten' . "<br>"; // nháy ' ' php sẽ coi như là 1 chuỗi 
     echo "$ten" . "<br>"; // nháy "" gọi đến tên biến 
    //5. chuỗi
    #5.1 kiểm tra độ dài chuỗi
    echo strlen($ten) . "<br>";
    #5.2 đếm số từ
    echo str_word_count($ten) . "<br>";
    #5.3 tìm kiến ký tự trong chuỗi
    echo strpos($ten, "a") . "<br>";
    #5.4 thay thế ký tự trong chuỗi
    echo str_replace("Van","May",$ten). "<br>";
    // 6. táon tử
    $soThuNhat = 10;
    $soThuHai = 8;
    // + - * / %
    echo $soThuNhat + $soThuHai . "<br>";
    // += -= /= %= 
    // echo $soThuNhat %= $soThuHai . "<br>";
    // so sánh == != < > <= >= ===
    // 7. câu điều kiện 
    // if( dk){
    //     logic
    // }
    //     elseif(){
    //         logic
    //     }
    // else{
    //     logic
    // }
    $tong = $soThuNhat + $soThuHai ;
    if ($tong < 15){
        echo "tổng nhỏ hơn 15";
    } 
        elseif($tong = 15){
            echo "tổng là 15";
    }
    else{
        echo "tổng lớn hơn 15";
    }
    ?>
</body>
</html>