version 1.0

task Intervene {
  input {
    Boolean citeCite
  }
  command <<<
    intervene \
      ~{true="--cite" false="" citeCite}
  >>>
}