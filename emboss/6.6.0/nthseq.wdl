version 1.0

task Nthseq {
  input {
    Boolean numberNumber
  }
  command <<<
    nthseq \
      ~{true="-number" false="" numberNumber}
  >>>
}