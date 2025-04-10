# Crime Investigation System

The **Crime Investigation System** is a Java-based application designed to manage and streamline crime investigation processes. It includes features for managing police officers, FIRs (First Information Reports), cases, and criminals. The system also integrates with a MySQL database for data storage and retrieval.

## Features

- **Police Officer Management**: Register and manage police officers.
- **FIR Management**: Create, search, and delete FIRs.
- **Case Management**: Create, search, and delete cases.
- **Criminal Management**: Add, search, and delete criminal records.
- **Admin Contact**: Provide feedback or suggestions to the admin.
- **About Us**: Information about the system.

## Project Structure

```
Crime-Investigation-System/
├── .classpath                # Eclipse classpath configuration
├── .project                  # Eclipse project configuration
├── .settings/                # Eclipse settings
├── .vscode/                  # VS Code launch configurations
├── bin/                      # Compiled Java classes and resources
├── src/                      # Source code
│   ├── DB/                   # Database-related classes
│   ├── UI/                   # User interface classes
│   └── org/                  # Other packages
├── Database/                 # SQL scripts for database setup
│   └── crimeinvestigations.sql
├── Jar File/                 # External JAR dependencies
│   └── mysql-connector-java-8.0.11.jar
├── wbp-meta/                 # Eclipse WindowBuilder metadata
└── .gitignore                # Git ignore file
```

## Prerequisites

- **Java Development Kit (JDK)**: Version 8 or higher.
- **MySQL Database**: Ensure MySQL is installed and running.
- **Eclipse IDE** (optional): For development and debugging.
- **MySQL Connector JAR**: Included in the `Jar File` directory.

## Setup Instructions

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/mangeshraut712/Crime-Investigation-System.git
   cd Crime-Investigation-System
   ```

2. **Import the Project**:
   - Open Eclipse or your preferred IDE.
   - Import the project as an existing Java project.

3. **Set Up the Database**:
   - Open MySQL Workbench or any MySQL client.
   - Execute the SQL script located at `Database/crimeinvestigations.sql` to create the database and tables.

4. **Configure Database Connection**:
   - Update the database connection details in `CrimeDB_Functions.java`:
     ```java
     con = DriverManager.getConnection("jdbc:mysql://localhost:3306/CrimeInvestigations?useSSL=false", "root", "root");
     ```

5. **Run the Application**:
   - Run the `Home` class from the `src/UI` package to start the application.

## Screenshots

- **Login Page**: Allows officers and admins to log in.
- **FIR Management**: Create and view FIRs.
- **Case Management**: Manage case details.
- **Criminal Records**: Add and search for criminals.

## Technologies Used

- **Java**: Core programming language.
- **Swing**: For building the graphical user interface.
- **MySQL**: For database management.
- **JDBC**: For database connectivity.

## Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Commit your changes and push them to your fork.
4. Submit a pull request.

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.

## Contact

For any queries or feedback, please contact the admin through the **Admin Contact** feature in the application.
