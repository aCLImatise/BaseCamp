version 1.0

task Debruijn {
  input {
    Boolean? word_size
    Boolean? alphabet
  }
  command <<<
    debruijn \
      ~{true="-n" false="" word_size} \
      ~{true="-a" false="" alphabet}
  >>>
  parameter_meta {
    word_size: "word size [Integer]"
    alphabet: "alphabet"
  }
}