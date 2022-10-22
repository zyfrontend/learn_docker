# 镜像版本
FROM node:19-alpine3.15
# 工作目录
WORKDIR /egg
# 项目依赖
COPY package.json .
# 安装依赖
RUN npm install
# 这里使用两个copy是因为package.json，一般不会改动，只需要使用缓存的package.json就足够了
COPY . .
# 暴露端口号
EXPOSE 3000
# 运行
CMD ["npm", "run", "dev"]