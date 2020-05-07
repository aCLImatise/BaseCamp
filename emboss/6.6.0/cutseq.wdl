version 1.0

task Cutseq {
  input {
    Boolean fromFrom
    Boolean toTo
  }
  command <<<
    cutseq \
      ~{true="-from" false="" fromFrom} \
      ~{true="-to" false="" toTo}
  >>>
}