version 1.0

task Go2csv.pl {
  input {
    Boolean fF
  }
  command <<<
    go2csv.pl \
      ~{true="-f" false="" fF}
  >>>
}