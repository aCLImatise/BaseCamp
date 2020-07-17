version 1.0

task ExtractSeq {
  input {
    Boolean? r
  }
  command <<<
    extract_seq \
      ~{true="-r" false="" r}
  >>>
  parameter_meta {
    r: ""
  }
}