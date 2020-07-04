version 1.0

task Polydot {
  input {
    Boolean? word_size
  }
  command <<<
    polydot \
      ~{true="-wordsize" false="" word_size}
  >>>
  parameter_meta {
    word_size: "integer    [6] Word size (Integer 2 or more)"
  }
}