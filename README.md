# Descroption

In this [Java Spring MVC](https://docs.spring.io/spring-framework/docs/3.2.x/spring-framework-reference/html/mvc.html) (Model View Controller) project, a web page is created, where the user has to enter a password to login. There are several levels of access to confidential information for people occupying different positions in the company.

**Model** is a component responsible for application data and for working with this data. **View** is a component responsible for user interaction, that is, for displaying data. **Controller** is the control center that is responsible for communicating between the Model and the View. All business logic is written in the Controller.

At the very beginning of the application working, an http-request comes to the **Front Controller**, which is part of Spring and also known as the **Servlet Dispatcher**. This component has already been written and will be used automatically in our application. We must write the remaining components - Model, View and Controller - ourselves. The **View** will be written using the JSP (Java Server Page) page, which is created on HTML and Java code.

