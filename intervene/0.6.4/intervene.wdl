version 1.0

task Intervene {
  input {
    Boolean? cite
  }
  command <<<
    intervene \
      ~{true="--cite" false="" cite}
  >>>
  parameter_meta {
    cite: "show citation information and exit"
  }
}