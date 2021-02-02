version 1.0

task MetaWRAP {
  input {
    Boolean? show_config
  }
  command <<<
    metaWRAP \
      ~{if (show_config) then "--show-config" else ""}
  >>>
  parameter_meta {
    show_config: "show where the metawrap configuration files are stored"
  }
  output {
    File out_stdout = stdout()
  }
}