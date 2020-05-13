version 1.0

task _cutseq {
  input {
    Boolean fromFrom
    Boolean toTo
  }
  command <<<
    _cutseq \
      ~{true="-from" false="" fromFrom} \
      ~{true="-to" false="" toTo}
  >>>
}