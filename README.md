<div align="center">

# 🕵️ Crime Investigation System

A Java desktop application for managing FIRs, officers, cases, and criminal records.

![Java](https://img.shields.io/badge/Java-Swing-orange?style=flat&logo=java&logoColor=white)
![Swing](https://img.shields.io/badge/Swing-UI-007396?style=flat)
![MySQL](https://img.shields.io/badge/MySQL-Database-4479a1?style=flat&logo=mysql&logoColor=white)
![JDBC](https://img.shields.io/badge/JDBC-Connectivity-4B8BBE?style=flat)
![License: MIT](https://img.shields.io/badge/License-MIT-lightgrey?style=flat)

</div>

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Stack](#stack)
- [Quick Start](#quick-start)
- [Project Structure](#project-structure)
- [License](#license)
- [Contact](#contact)

## Overview

Crime Investigation System is an Eclipse-friendly Swing application for police-station workflows. It centralizes officer registration, FIR handling, case tracking, and criminal record management while storing data in MySQL through JDBC.

## Features

- Officer registration and authentication screens.
- FIR create, search, display, and delete flows.
- Case and criminal record management from the same desktop UI.
- Admin contact and about screens for feedback and system context.
- Database-backed storage with a bundled MySQL connector JAR.

## Stack

- Language: Java 8+.
- UI: Swing and WindowBuilder-generated forms.
- Data: MySQL, JDBC, and the provided SQL seed script.
- Tooling: Eclipse project metadata plus a local connector JAR.

## Quick Start

1. Import the project into Eclipse or another Java IDE as an existing Java project.
2. Run `Database/crimeinvestigations.sql` in MySQL to create the schema.
3. Update the JDBC connection in `CrimeDB_Functions.java` if your MySQL credentials differ.
4. Launch the `Home` class from `src/UI` to open the application.

## Project Structure

```text
.
├── Database/crimeinvestigations.sql   # Database schema and seed data
├── Jar File/mysql-connector-java-8.0.11.jar
├── src/
│   ├── DB/                            # JDBC helpers and database utilities
│   └── UI/                            # Login, FIR, case, and record screens
├── .classpath / .project              # Eclipse project files
└── .settings/ / wbp-meta/             # IDE and WindowBuilder metadata
```

## License

Licensed under the MIT License. See [LICENSE](LICENSE).

## Contact

Use the in-app **Admin Contact** screen to share feedback or suggestions.
