version 1.0

task Freec2circos.pl {
  input {
    Boolean vV
  }
  command <<<
    freec2circos.pl \
      ~{true="-v" false="" vV}
  >>>
}