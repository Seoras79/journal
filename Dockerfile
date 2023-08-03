# Step 1: Choose the base image
FROM python:3.9

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the app files from the local directory to the container
COPY . /app

# Step 4: Install dependencies
RUN pip install -r requirements.txt

# Step 5: Expose the port your app is running on (if applicable)
EXPOSE 5000

# Step 6: Run the app
CMD ["python", "journal.py"]

