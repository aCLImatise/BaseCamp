version 1.0

task Megablast {
  input {
    Boolean mM
    Boolean dD
  }
  command <<<
    megablast \
      ~{true="-m" false="" mM} \
      ~{true="-D" false="" dD}
  >>>
}