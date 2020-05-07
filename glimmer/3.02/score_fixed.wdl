version 1.0

task ScoreFixed {
  input {
    Boolean iI
    Boolean nN
    Boolean sS
  }
  command <<<
    score-fixed \
      ~{true="-I" false="" iI} \
      ~{true="-N" false="" nN} \
      ~{true="-s" false="" sS}
  >>>
}