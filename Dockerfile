FROM node

# Set application working directory
WORKDIR /Multibranchone

COPY . .

# Install node dependencies
RUN npm install



EXPOSE 8080

# RUN chmod +x entrypoint.sh # Override the entrypoint.sh
CMD ["python", "./hello.py"]
