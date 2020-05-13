version 1.0

task Obo2rdf.pl {
  input {
    Boolean fF
    Boolean uU
    Boolean nN
  }
  command <<<
    obo2rdf.pl \
      ~{true="-f" false="" fF} \
      ~{true="-u" false="" uU} \
      ~{true="-n" false="" nN}
  >>>
}