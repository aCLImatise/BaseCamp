version 1.0

task Obo2owl.pl {
  input {
    Boolean fF
    Boolean uU
    Boolean wW
  }
  command <<<
    obo2owl.pl \
      ~{true="-f" false="" fF} \
      ~{true="-u" false="" uU} \
      ~{true="-w" false="" wW}
  >>>
}