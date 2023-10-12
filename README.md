
# X AI Starknet Contract

## Introduction

This is a brief introduction to the project, explaining its purpose, features, and any other relevant information.

## Setup

To set up the environment for this project, follow the [environment setup instructions](https://docs.example.com/setup).

## Usage

Follow these steps to use the project:

1. Run the `build.sh` script.
2. Run the `create_key_and_fetch_account.sh` script.
3. Run the `declare.sh` script.
4. Run the `deploy.sh` script.

For detailed instructions on each script, use the `--help` option. For example:
- `create_key_and_fetch_account.sh --help`

Make sure you have Python installed. To retrieve the token name during deployment, run the command:
```bash
python3 -i util.py
```
Then, execute the str_to_felt("token name") function to obtain the required string for naming during deployment. Utilize similar functions if needed. :
```bash
str_to_felt("token name")
```

To exit the Python interpreter, type:
```bash
exit()
```
Note:
If you are using Windows, follow these steps to ensure proper execution:

1. Install the Ubuntu 22.04 version from the [Microsoft Store](https://www.microsoft.com/store/apps/ubuntu/300011281).
2. Run the scripts within Ubuntu 22.04.

Before running the `.sh` files, ensure to grant execution permissions. Open the Ubuntu terminal and navigate to the directory containing the scripts. Use the `chmod +x` command to grant permissions. For example:

```bash
chmod +x build.sh create_key_and_fetch_account.sh declare.sh deploy.sh
```
## Contribution Guidelines

If you'd like to contribute to this project, please follow the [contribution guidelines](CONTRIBUTING.md).

## License

This project is licensed under the [MIT License](LICENSE).

## Vietnamese:
## HƯỚNG DẪN
Cài đặt môi trường StarkNet
Để cài đặt môi trường cho StarkNet, làm theo hướng dẫn trong tài liệu cài đặt chính thức.

## Sau khi cài đặt:
Chạy lệnh build.sh.
Chạy lệnh create_key_and_fetch_account.sh.
Chạy lệnh declare.sh.
Chạy lệnh deploy.sh.
Để xem hướng dẫn cho mỗi file, sử dụng tùy chọn —help. Ví dụ, create_key_and_fetch_account.sh --help. Nếu một file không hiển thị trợ giúp, điều đó có nghĩa là nó khá đơn giản và không có tùy chọn trợ giúp.

## Lưu ý:

Cần phải cài đặt Python. Để lấy tên token khi triển khai, chạy lệnh python3 -i util.py, sau đó thực thi hàm str_to_felt("tên token") để có chuỗi cần thiết để đặt tên khi triển khai. Sử dụng các hàm tương tự nếu cần, và thoát bằng cách gõ exit().
Nếu sử dụng Windows, cài đặt phiên bản Ubuntu 22.04 từ Microsoft Store, và chạy các tập lệnh trong Ubuntu 22.04.
Trước khi chạy các tập lệnh .sh, đảm bảo thực thi lệnh chmod +x để cấp quyền. Ví dụ: chmod +x build.sh create_key_and_fetch_account.sh declare.sh deploy.sh. Thực hiện bước này chỉ một lần trước khi chạy.