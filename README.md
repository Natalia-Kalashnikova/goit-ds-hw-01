# 📒 Contact Book (Address Book) — Console Assistant Bot

A simple command-line contact book assistant bot written in Python 3.13, using object-oriented programming principles.

This console bot helps you manage contacts: add, edit, delete, and search for phone numbers. Contacts can have multiple phone numbers, and each phone number is validated (must be exactly 10 digits). Additionally, contacts can store a birthday date, which is validated and used to track upcoming birthdays and send timely greetings.

This address book is automatically saved to disk when you exit the program and restored when you start it again, so you never lose your contacts!

---

## 💾 Data Persistence

- All your contacts and their data are automatically saved to a file (addressbook.pkl) when you exit the program.
- When you start the program again, your address book is restored from disk — you never lose your data between sessions.
- This is implemented using Python's pickle serialization protocol.

---

## 🧠 Features

- Interactive console assistant bot interface
- Add and remove contact records
- Edit and find phone numbers
- Support multiple phone numbers per contact
- Validate phone numbers (only 10-digit numeric values)
- Store and validate birthdays in format DD.MM.YYYY
- Retrieve contacts with birthdays in the next 7 days, including adjusted greeting dates if birthdays fall on weekends
- Pretty string representation of records and address book
- Automatic saving and loading (persistence) of your address book using pickle serialization

---

## 📦 Example Commands

```bash
add John 1234567890
add-birthday John 01.01.2000
phone John
show-birthday John
all
birthdays
exit
```

---

## 🛠 Technologies

- Python 3.13
- OOP principles
- Standard library (collections.UserDict, pickle)
- pickle for data serialization and persistence

---

## 🚀 Quick Start

- Clone this repository.
- Run python3 main.py from the contact_book directory.
- Start managing your contacts — your data will always be there next time!

---

## 🐳 Dockerization

You can also run this project inside a Docker container.

### 1. Build the Docker image

Run the following command in the root directory of the project:

`docker build -t contact-book-app .`


This command will:

  - Use the official Python 3.13 slim image as the base.
  - Copy the project files into the container.
  - Install dependencies using Poetry.
  - Set up the working directory at /goit-ds-hw-01.

### 2. Run the container

After building the image, start the container with:

`docker run -p 3000:3000 contact-book-app`


This will:

  - Expose the app on port 3000 (accessible at http://localhost:3000)

  - Run the main program using:

`python -m contact_book.main`

### 3. Manage containers

To check running containers:

`docker ps`


To stop a container:

`docker stop <container_id>`

### 4. Example workflow

Build the image

`docker build -t contact-book-app .`

Run the container

`docker run -d -p 3000:3000 contact-book-app`

View logs

`docker logs <container_id>`
