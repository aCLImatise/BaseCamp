version 1.0

task Nthseq {
  input {
    Boolean? number
  }
  command <<<
    nthseq \
      ~{true="-number" false="" number}
  >>>
  parameter_meta {
    number: "integer    [1] The number of the sequence to output (Integer 1 or more)"
  }
}