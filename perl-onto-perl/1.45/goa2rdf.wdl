version 1.0

task Goa2rdf.pl {
  input {
    Boolean fF
  }
  command <<<
    goa2rdf.pl \
      ~{true="-f" false="" fF}
  >>>
}