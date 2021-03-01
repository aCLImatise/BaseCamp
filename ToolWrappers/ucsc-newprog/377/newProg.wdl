version 1.0

task NewProg {
  input {
    Boolean? jkh_gap
    Boolean? cgi
    String progname
    String description
  }
  command <<<
    newProg \
      ~{progname} \
      ~{description} \
      ~{if (jkh_gap) then "-jkhgap" else ""} \
      ~{if (cgi) then "-cgi" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    jkh_gap: "- include jkhgap.a and mysql libraries as well as jkweb.a archives"
    cgi: "- create shell of a CGI script for web"
    progname: ""
    description: ""
  }
  output {
    File out_stdout = stdout()
  }
}