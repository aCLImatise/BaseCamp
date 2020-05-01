version 1.0

task Bioformats {
  input {
    Boolean vV
  }
  command <<<
    bioformats \
      ~{true="-v" false="" vV}
  >>>
}