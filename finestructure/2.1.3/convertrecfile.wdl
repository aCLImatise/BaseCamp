version 1.0

task Convertrecfile.pl {
  input {
    Boolean mM
    Boolean vV
    Boolean hH
  }
  command <<<
    convertrecfile.pl \
      ~{true="-M" false="" mM} \
      ~{true="-v" false="" vV} \
      ~{true="-H" false="" hH}
  >>>
}