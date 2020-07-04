version 1.0

task _skipseq {
  input {
    Boolean? skip
  }
  command <<<
    _skipseq \
      ~{true="-skip" false="" skip}
  >>>
  parameter_meta {
    skip: "integer    [0] Number of sequences to skip at start (Any integer value)"
  }
}