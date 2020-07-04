version 1.0

task NewProg {
  input {
    Boolean? jkh_gap
    Boolean? cgi
    String progname
    String description
    String words
  }
  command <<<
    newProg \
      ~{progname} \
      ~{description} \
      ~{words} \
      ~{true="-jkhgap" false="" jkh_gap} \
      ~{true="-cgi" false="" cgi}
  >>>
  parameter_meta {
    jkh_gap: "- include jkhgap.a and mysql libraries as well as jkweb.a archives "
    cgi: "- create shell of a CGI script for web"
    progname: ""
    description: ""
    words: ""
  }
}