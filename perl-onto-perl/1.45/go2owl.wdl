version 1.0

task Go2owl.pl {
  input {
    Boolean fF
  }
  command <<<
    go2owl.pl \
      ~{true="-f" false="" fF}
  >>>
}