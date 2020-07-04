version 1.0

task Gthsplit {
  input {
    Boolean? alignment_score
  }
  command <<<
    gthsplit \
      ~{true="-alignmentscore" false="" alignment_score}
  >>>
  parameter_meta {
    alignment_score: ""
  }
}