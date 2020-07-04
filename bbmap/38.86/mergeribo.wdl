version 1.0

task Mergeribo.sh {
  input {
    String sequence_dot
  }
  command <<<
    mergeribo.sh \
      ~{sequence_dot}
  >>>
  parameter_meta {
    sequence_dot: "Mutually exclusive with best."
  }
}