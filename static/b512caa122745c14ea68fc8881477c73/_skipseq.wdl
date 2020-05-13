version 1.0

task _skipseq {
  input {
    Boolean skipSkip
  }
  command <<<
    _skipseq \
      ~{true="-skip" false="" skipSkip}
  >>>
}