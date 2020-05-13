version 1.0

task Freec2bed.pl {
  input {
    Boolean vV
  }
  command <<<
    freec2bed.pl \
      ~{true="-v" false="" vV}
  >>>
}