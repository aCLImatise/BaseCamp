version 1.0

task SmofTranslate {
  input {
    Boolean fromFromStart
    Boolean allAllFrames
    Boolean cdsCds
    String? inputInput
  }
  command <<<
    smof translate \
      ~{inputInput} \
      ~{true="--from-start" false="" fromFromStart} \
      ~{true="--all-frames" false="" allAllFrames} \
      ~{true="--cds" false="" cdsCds}
  >>>
}