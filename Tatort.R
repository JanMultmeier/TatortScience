#Die tatort-Chronologie

#1: Daten aus Wikipedia (http://de.wikipedia.org/wiki/Liste_der_Tatort-Folgen) einlesen

require("XML")
tatort_wiki <- readHTMLTable(doc="http://de.wikipedia.org/wiki/Liste_der_Tatort-Folgen#Gesendete_Folgen")
tatort_wiki <- tatort_wiki[[2]]

#2: Daten aus den tatort-blog (http://www.tatort-blog.de/tatort-datenbank/) einlesen

con <- url("http://www.tatort-blog.de/tatort-datenbank/")
blog_daten <- readLines(con)
close(con)

tatort_blog <- url %>%
  html() %>%
  hmtl_nodes(xpath='//*[@id="episoden"]') %>%
  html_table()

#3: Einlesen der eigenen Datentabelle


  