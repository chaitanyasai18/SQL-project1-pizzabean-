# SQL-project1-pizzabean-<br>

This project focuses on analyzing Pizzabean's dataset using SQL and creating an interactive dashboard using Google Looker Studio. The insights derived from this project can help drive business decisions.

## Project Overview

- **SQL Analysis**: Using SQL to extract and analyze Pizzabean data.
- **Looker Studio Dashboard**: Creating a visual and interactive representation of the analysis.
- **Cloud SQL for MySQL**: Hosting the dataset on Google Cloud for efficient querying and dashboard integration.
- **Google Cloud Storage**: Managing dataset files with GCP storage buckets.

## Repository Contents

- **`pizzabean_queries.sql`**: Contains the SQL queries used for data analysis.
- **`pizzabean_dataset.zip`**: Includes the dataset used in the project.
- **`Pizzabean_Dashboard.pdf`**: A PDF version of the Looker Studio dashboard.

---

## Setting Up the Project

### 1. Creating a Dump File in MySQL Workbench

To back up or transfer the dataset, you can create a dump file using MySQL Workbench:

1. **Open MySQL Workbench**:
   - Connect to your database server where the dataset resides.

2. **Export the Database**:
   - Navigate to **Server** > **Data Export**.
   - Select the database containing the Pizzabean data.

3. **Save the Dump File**:
   - Specify a location on your local system to save the dump file.
   - Click **Start Export**.

4. **Verify the Dump File**:
   - Ensure the `.sql` file is generated and contains all required tables and data.

---

### 2. Creating a Cloud SQL Instance on GCP

1. **Set Up GCP**:
   - Go to [Google Cloud Console](https://console.cloud.google.com/).
   - Ensure billing is enabled for your project.

2. **Create a Cloud SQL Instance**:
   - Navigate to the **SQL** section in the console.
   - Click on **Create Instance** and select **MySQL**.
   - Fill in the instance details:
     - **Instance ID**: `pizzabean-sql-instance`.
     - **Region**: Choose a region close to your target users.
     - **Database Version**: Select a compatible MySQL version.
   - Set up **Authentication**:
     - Create a username (e.g., `admin`) and a secure password.
   - Click **Create** to finalize.

3. **Import the Dump File**:
   - Upload the dump file to the Cloud SQL instance:
     - Navigate to your Cloud SQL instance in the console.
     - Use the **Import** feature to load the dump file into the database.

---

### 3. Creating a Google Cloud Storage Bucket

To store and manage your dataset files:

1. **Access Google Cloud Storage**:
   - Go to the **Cloud Storage** section in [Google Cloud Console](https://console.cloud.google.com/storage).

2. **Create a Bucket**:
   - Click **Create Bucket**.
   - Specify the bucket name (e.g., `pizzabean-datasets`).
   - Select a location type:
     - **Region**: Choose a single region.
     - **Multi-region**: For higher availability.
   - Choose a storage class based on your needs:
     - **Standard**: For frequent access.
     - **Coldline/Archive**: For infrequent access or archival.

3. **Upload Files**:
   - After creating the bucket, upload the `pizzabean_dataset.zip` file.
   - Set appropriate permissions for access.

---

### 4. Connecting Looker Studio to Cloud SQL

1. **Open Looker Studio**:
   - Go to [Looker Studio](https://lookerstudio.google.com/).

2. **Create a Data Source**:
   - Click on **Create** > **Data Source**.
   - Search for **Cloud SQL for MySQL** and select it.

3. **Set Up the Connection**:
   - Enter instance name.
   - Provide the database name, username, and password created earlier.
   - Test the connection to ensure it works.

4. **Build the Dashboard**:
   - Use the connected data source to add tables, charts, and filters.
   - Design the dashboard to showcase key metrics like sales, customer behavior, or product performance.

---

## Prerequisites

- **GCP Account**: Ensure you have a Google Cloud account with billing enabled.
- **SQL Environment**: Knowledge of MySQL to create and modify queries.
- **Looker Studio**: Familiarity with Looker Studio for creating dashboards.

---

## Usage

This project serves as:
- A reference for hosting and querying datasets on Cloud SQL.
- A guide for integrating SQL-based datasets with Looker Studio.
- A template for building interactive dashboards for business analysis.

---

## Author

**S. Chaitanya Sai**  

                                                                                                                                                                        
