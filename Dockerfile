# 使用官方 Ruby 镜像
FROM ruby:3.2.2

# 设置工作目录
WORKDIR /app

# 复制项目文件
COPY . .

# 如果有 Gemfile，先复制并安装依赖
COPY Gemfile ./

# 安装依赖（如果没有 Gemfile 会自动跳过）
RUN bundle install || true

# 默认启动 bash（你可以改为执行脚本）
CMD ["ruby", "bot.rb"]
