version 1.0

task _showseq {
  input {
    Boolean formatFormat
  }
  command <<<
    _showseq \
      ~{true="-format" false="" formatFormat}
  >>>
}