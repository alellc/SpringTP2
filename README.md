# SpringTP2
Requerimento como trabajo practico para la asiganatura de DWS
Partiendo del proyecto <https://github.com/jeromejaglale/spring4-tutorial/tree/master/04_form_validation> he añadido alguna funcionalidad
###Requisitos
Crear la base de datos y la tabla descrita en Resources/SQL
###Añadidos
* He añadido al POM.xml las dependencias para poder conectarme a la base de datos con JDBCTemplates y el conector a MySql, tambien he añadido el plugin de jetty para poder desplegar la aplicacion rapidamente
* He cambiado la manera de la configuracion ya que estaba hecha en java y la he echo con el SpringDispacherServlet.xml y web.xml creando el DataSources y añadiendo el archivo database.properties
* He creado una pagina de inicio, por lo que al despleguear la aplicacion deberas poner en la URL del navegador localhost:9999/index
* He añadido una Crud 
