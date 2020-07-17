version 1.0

task Dottup {
  input {
    Boolean? word_size
  }
  command <<<
    dottup \
      ~{true="-wordsize" false="" word_size}
  >>>
  parameter_meta {
    word_size: "integer    [10] Word size (Integer 2 or more)"
  }
}