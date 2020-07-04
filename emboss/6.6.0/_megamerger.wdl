version 1.0

task _megamerger {
  input {
    Boolean? word_size
  }
  command <<<
    _megamerger \
      ~{true="-wordsize" false="" word_size}
  >>>
  parameter_meta {
    word_size: "integer    [20] Word size (Integer 2 or more)"
  }
}