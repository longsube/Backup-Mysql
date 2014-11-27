Backup MySql 
======



# I. Mục Tiêu Của Bài Viết
  Mục tiêu của bài viết lập lịch cho khoảng thời gian backup toàn bộ dữ liệu của Mysql. 
  Thời gian lập lịch sẽ là trong 1 ngày cập nhật 2 lần vào lúc 13h và 24h. Trong thư mục chứa file backup chỉ tồn tại 7 backup mới nhất.

# II. Các bước thực hiện
  B1: Cài đặt Cron trên Ubuntu: 

    apt-get updte 
    apt-get install cron 
  
  B2: Sau khi cài đặt chạy lệnh sau: 
  
    crontab -e 
  
  Nếu là lần đầu chạy lệnh crontab -e sẽ hiện ra mục để chọn chương trình mở file mậc định. Mình sử dụng nano để mở ứng dụng lên sẽ chọn là 2. 
  
  B3: Sau khi thưc hiện c bước 2 ta 
