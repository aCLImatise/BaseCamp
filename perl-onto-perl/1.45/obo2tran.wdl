version 1.0

task Obo2tran.pl {
  input {
    Boolean fF
  }
  command <<<
    obo2tran.pl \
      ~{true="-f" false="" fF}
  >>>
}