version 1.0

task Kalign {
  input {
    Boolean formatFormat
    Boolean reformatReformat
  }
  command <<<
    kalign \
      ~{true="--format" false="" formatFormat} \
      ~{true="--reformat" false="" reformatReformat}
  >>>
}