Backup MySql 
======



# I. Mục tiêu 
  Mục tiêu của bài viết lập lịch cho khoảng thời gian backup toàn bộ dữ liệu của Mysql. 
  
  Thời gian lập lịch sẽ là trong 1 ngày cập nhật 2 lần vào lúc 12h và 0h. Trong thư mục chứa file backup chỉ tồn tại 7 backup mới nhất.

# II. Các bước thực hiện
  B1: Tạo thư mục chứa file backup như đường dẫn sau: 
  
    /var/lib/backups/mysql
  
  B2: Tải file shell backup theo đường link sau. Đặt file shell vào thư mục bạn lựa chọn ở đấy mình đặt trong thư mục /root. 
  
    wget https://github.com/daokhactuan48/Backup-Mysql/blob/master/backupall.sh
  
  B3: Tạo ra 1 file sau: 
  
    vi ~/.my.cnf
  
  B4: Copy nội dung sau vào file .my.cnf và thay đổi user và password cho phù hợp, ở đây mình dùng uesr là root. 
  
    [mysqldump]
    user = root 
    password = secret

  B5: Thay đổi quyền thành 600 để có tính bảo mật cao hơn.
  
    chmod 600 ~/.my.cnf

  B7: Kiểm tra lại quyền của thư mục vừa tạo bằng lệnh sau: 
  
    # ls -la ~/.my.cnf

  B8: Cài đặt Cron trên Ubuntu: 

    # apt-get updte 
    # apt-get install cron 
  
  B9: Sau khi cài đặt chạy lệnh sau: 
  
    # crontab -e 
  
  Nếu là lần đầu chạy lệnh crontab -e sẽ hiện ra mục để chọn chương trình mở file mậc định. Mình sử dụng nano để mở ứng dụng lên sẽ chọn là 2. 
  
  B10: Sau khi thưc hiện bước thứ 2 bạn sẽ đang ở trong 1 files như sau: 
  
  <img src=http://i.imgur.com/9Zxbipj.png width="60%" height="60%" border="1">
  
  B11: Thêm dòng sau vào file: 
  
    0 0,12 * * * bash /root/backupall.sh
    
  B12: Hoàn thành quá trình tạo file backup.

# III. Recovery lại file backup
  
  B1: Sử dụng các file backup tạo trong thư mục 

     /var/lib/backups/mysql

  B2: Các file trong thư mục này sẽ được nén trong định dạng là .gz. Thực thi lệnh sau: 
  
    gzip -d [tenfilebackup].sql.gz

  B3: Sau khi hoàn thành quá trình giải nén ta thu được file sau [tenfilebackup].sql. Sử dụng file này để recovery. Thực thi lệnh sau để recovery.
  
    mysql -u username -p < [tenfilebackup].sql

  B4: Mất một khoảng thời gian để recovery lại tùy thuộc vào dữ liệu của bạn.
  
