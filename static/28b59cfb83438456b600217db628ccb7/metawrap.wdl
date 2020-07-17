version 1.0

task Metawrap {
  input {
    Boolean? show_config
  }
  command <<<
    metawrap \
      ~{true="--show-config" false="" show_config}
  >>>
  parameter_meta {
    show_config: "show where the metawrap configuration files are stored"
  }
}