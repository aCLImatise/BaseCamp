version 1.0

task _prettyseq {
  input {
    Boolean rangeRange
  }
  command <<<
    _prettyseq \
      ~{true="-range" false="" rangeRange}
  >>>
}