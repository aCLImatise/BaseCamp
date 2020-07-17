version 1.0

task Sizeseq {
  input {
    Boolean? descending
  }
  command <<<
    sizeseq \
      ~{true="-descending" false="" descending}
  >>>
  parameter_meta {
    descending: "boolean    [N] By default the shortest sequence is given first."
  }
}