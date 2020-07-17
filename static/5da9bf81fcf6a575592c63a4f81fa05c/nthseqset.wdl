version 1.0

task Nthseqset {
  input {
    Boolean? number
  }
  command <<<
    nthseqset \
      ~{true="-number" false="" number}
  >>>
  parameter_meta {
    number: "integer    [1] The number of the sequence set to output (Integer 1 or more)"
  }
}