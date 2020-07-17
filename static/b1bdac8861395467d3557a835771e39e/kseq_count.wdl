version 1.0

task KseqCount {
  input {
    Boolean? a
    File filename
  }
  command <<<
    kseq_count \
      ~{filename} \
      ~{true="-a" false="" a}
  >>>
  parameter_meta {
    a: ""
    filename: ""
  }
}