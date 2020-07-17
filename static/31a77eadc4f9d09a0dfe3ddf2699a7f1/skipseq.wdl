version 1.0

task Skipseq {
  input {
    Boolean? skip
  }
  command <<<
    skipseq \
      ~{true="-skip" false="" skip}
  >>>
  parameter_meta {
    skip: "integer    [0] Number of sequences to skip at start (Any integer value)"
  }
}