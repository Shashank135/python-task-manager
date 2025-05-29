# app.py
import streamlit as st

def main():
    st.set_page_config(page_title="Simple Task Manager", layout="centered")
    st.title("My Simple Python Task Manager")

    st.write("Welcome to your task manager!")
    st.info("This is where your tasks will appear. We'll add functionality soon.")

if __name__ == "__main__":
    main()
# New change for webhook test