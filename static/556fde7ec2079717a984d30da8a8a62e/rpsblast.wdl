version 1.0

task Rpsblast {
  input {
    Boolean mM
  }
  command <<<
    rpsblast \
      ~{true="-m" false="" mM}
  >>>
}