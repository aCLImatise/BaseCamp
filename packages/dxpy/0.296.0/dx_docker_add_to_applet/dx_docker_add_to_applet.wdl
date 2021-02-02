version 1.0

task DxdockerAddtoapplet {
  input {
    Boolean? alternative_export
  }
  command <<<
    dx_docker add_to_applet \
      ~{if (alternative_export) then "--alternative_export" else ""}
  >>>
  parameter_meta {
    alternative_export: "EXPERT ONLY: Use alternative method to export Docker\\nimage since Docker CLI export sometimes doesn't create\\nthe root filesystem properly.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}