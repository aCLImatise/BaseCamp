version 1.0

task Catrack {
  input {
    Boolean vV
    Boolean dD
    Boolean fF
  }
  command <<<
    Catrack \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-f" false="" fF}
  >>>
}