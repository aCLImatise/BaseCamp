version 1.0

task Nthseqset {
  input {
    Boolean numberNumber
  }
  command <<<
    nthseqset \
      ~{true="-number" false="" numberNumber}
  >>>
}