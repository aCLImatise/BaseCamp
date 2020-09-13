version 1.0

task Shuffleseq {
  input {
    Boolean? shuffle
  }
  command <<<
    _shuffleseq \
      ~{if (shuffle) then "-shuffle" else ""}
  >>>
  parameter_meta {
    shuffle: "integer    [1] Number of shuffles (Any integer value)"
  }
  output {
    File out_stdout = stdout()
  }
}