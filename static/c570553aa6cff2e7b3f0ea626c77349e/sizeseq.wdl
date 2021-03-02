version 1.0

task Sizeseq {
  input {
    Boolean? descending
    Boolean? feature
  }
  command <<<
    sizeseq \
      ~{if (descending) then "-descending" else ""} \
      ~{if (feature) then "-feature" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    descending: "boolean    [N] By default the shortest sequence is\\ngiven first."
    feature: "boolean    Sequence feature information will be\\nretained if this option is set."
  }
  output {
    File out_stdout = stdout()
  }
}