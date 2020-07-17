version 1.0

task _nthseq {
  input {
    Boolean? number
  }
  command <<<
    _nthseq \
      ~{true="-number" false="" number}
  >>>
  parameter_meta {
    number: "integer    [1] The number of the sequence to output (Integer 1 or more)"
  }
}