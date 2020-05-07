version 1.0

task NewProg {
  input {
    String includeInclude
    Boolean cgiCgi
    String? prognameProgname
    String? descriptionDescription
    String? wordsWords
  }
  command <<<
    newProg \
      ~{prognameProgname} \
      ~{if defined(includeInclude) then ("- include " +  '"' + includeInclude + '"') else ""} \
      ~{true="-cgi" false="" cgiCgi} \
      ~{descriptionDescription} \
      ~{wordsWords}
  >>>
}