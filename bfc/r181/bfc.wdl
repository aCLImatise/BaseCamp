version 1.0

task Bfc {
  input {
    Boolean vV
    String? toToCountFq
    String? toToCorrectFq
  }
  command <<<
    bfc \
      ~{toToCountFq} \
      ~{true="-v" false="" vV} \
      ~{toToCorrectFq}
  >>>
}