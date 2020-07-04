version 1.0

task Wordmatch {
  input {
    Boolean? word_size
  }
  command <<<
    wordmatch \
      ~{true="-wordsize" false="" word_size}
  >>>
  parameter_meta {
    word_size: "integer    [4] Word size (Integer 2 or more)"
  }
}