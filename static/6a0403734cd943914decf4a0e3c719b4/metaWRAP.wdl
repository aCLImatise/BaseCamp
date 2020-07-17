version 1.0

task MetaWRAP {
  input {
    Boolean? show_config
  }
  command <<<
    metaWRAP \
      ~{true="--show-config" false="" show_config}
  >>>
  parameter_meta {
    show_config: "show where the metawrap configuration files are stored"
  }
}