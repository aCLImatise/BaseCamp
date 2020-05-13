version 1.0

task Metawrap {
  input {
    Boolean showShowConfig
  }
  command <<<
    metawrap \
      ~{true="--show-config" false="" showShowConfig}
  >>>
}