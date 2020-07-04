version 1.0

task Prettyseq {
  input {
    Boolean? range
  }
  command <<<
    prettyseq \
      ~{true="-range" false="" range}
  >>>
  parameter_meta {
    range: "range      [Whole sequence] Range(s) to translate"
  }
}