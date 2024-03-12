# Description

In this [Java Spring MVC](https://docs.spring.io/spring-framework/docs/3.2.x/spring-framework-reference/html/mvc.html) (Model View Controller) project, a web page is created, where the user has to enter a password to login. There are several levels of access to confidential information for people occupying different positions in the company.

**Model** is a component responsible for application data and for working with this data. Thus, the Model is a container for storing data. Using the Controller, we can add data to the Model and then use it in the View. **View** is a component responsible for user interaction, that is, for displaying data. **Controller** is the control center that is responsible for communicating between the Model and the View. All business logic is written in the Controller.

At the very beginning of the application working, an http-request comes to the **Front Controller**, which is part of Spring and also known as the **Dispatcher Servlet**. This component has already been written and will be used automatically in our application. We must write the remaining components - Model, View and Controller - ourselves. The **View** will be written using the JSP (Java Server Page) page, which is created on HTML and Java code. The application is configured using annotations and a small XML-file.

# Application Configuration

Create a new project using *maven-archetype-webapp*. This will allow us to automatically create a project for an MVC application with required files hierarchy (WEB-INF directory, web.xml file etc.). Also do not forget to install [Apache Tomcat](https://tomcat.apache.org/download-90.cgi). **Apache Tomcat** is a web server and servlet container that provides a runtime environment for Java server applications. In the context of Java MVC applications, Apache Tomcat performs several important tasks such as processing *http* requests, loading and managing servlets, managing JSP pages, and others.

The *web.xml* file is needed to configure the **Dispatcher Servlet** (our Front Controlles). It contains the name of this servlet and the class that is responsible for this servlet. The *web.xml* file also contains the information about the *applicationContext.xml* file that is responsible for the Spring application configuration. Then we should write the URL of the **Dispatcher Servlet**, i.e. the address in browser. We use a single character '/' here, which means that absolutely any http-request will be sent to our server.

The *applicationContext.xml* contains so called **component-scan**, i.e. the package where the scanning occurs. The *<mvc:annotation-driven/>* line is used to support various functionality such as validation, etc. Next we write a bean for the **View**. The prefix and the suffix are used so that we can call our **Views** just by name.

# Code developing

First of all, we can create **MyController** that should be market by the *@Component* annotation. The *@RequestMapping* annotation is used for mapping, i.e. to relate the corresponding method with an address in the browser. We can also use this annotation before creating a class, then it will apply to all methods of the class. Also, remember that this annotation must always contain different values, otherwise the Controller will become confused about which method it should call. Next, we create two **Views** with some HTML code, which are intended for requesting data and for displaying data in a web page. We can add any data to the **Model** usint the *addAttribute()* method and then display this data in **Views**. To do this, we can make some simple changes in *.jsp* files: *$ + name of the attribute*. To use the Model, we must of course use it as a method parameter.

To display information in the View and to work with this information, we can use the Spring MVC functionality. There are several forms for this: input, select, radiobutton, checkbox and others. To use these forms in Views, we should add line

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

tj the *.jsp* files.
