version 1.0

task Obo2xml.pl {
  input {
    Boolean fF
  }
  command <<<
    obo2xml.pl \
      ~{true="-f" false="" fF}
  >>>
}