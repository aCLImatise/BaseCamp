version 1.0

task Hamming {
  input {
    Boolean? size
  }
  command <<<
    hamming \
      ~{true="-size" false="" size}
  >>>
  parameter_meta {
    size: "(unsigned int) default: 32 number of symbols"
  }
}