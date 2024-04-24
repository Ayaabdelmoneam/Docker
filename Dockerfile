# Jupyter Docker image as base
FROM jupyter/datascience-notebook

# Set the working directory to /assign
WORKDIR /assign

# Copy the current directory contents into the container at /assign
COPY . /assign

# Make port 8888 available to the world outside this container
EXPOSE 8888

# Run Jupyter Notebook when the container launches
CMD ["jupyter", "notebook", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root"]