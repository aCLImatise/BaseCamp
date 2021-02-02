version 1.0

task Metawrap {
  input {
    Boolean? show_config
  }
  command <<<
    metawrap \
      ~{if (show_config) then "--show-config" else ""}
  >>>
  parameter_meta {
    show_config: "show where the metawrap configuration files are stored"
  }
  output {
    File out_stdout = stdout()
  }
}