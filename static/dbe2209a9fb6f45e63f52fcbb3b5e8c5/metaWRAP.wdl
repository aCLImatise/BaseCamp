version 1.0

task MetaWRAP {
  input {
    Boolean showShowConfig
  }
  command <<<
    metaWRAP \
      ~{true="--show-config" false="" showShowConfig}
  >>>
}