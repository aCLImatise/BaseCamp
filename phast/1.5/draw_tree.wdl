version 1.0

task DrawTree {
  input {
    Boolean dD
    Boolean bB
    Boolean vV
    Boolean sS
  }
  command <<<
    draw_tree \
      ~{true="-d" false="" dD} \
      ~{true="-b" false="" bB} \
      ~{true="-v" false="" vV} \
      ~{true="-s" false="" sS}
  >>>
}