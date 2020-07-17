version 1.0

task _prettyseq {
  input {
    Boolean? range
  }
  command <<<
    _prettyseq \
      ~{true="-range" false="" range}
  >>>
  parameter_meta {
    range: "range      [Whole sequence] Range(s) to translate"
  }
}