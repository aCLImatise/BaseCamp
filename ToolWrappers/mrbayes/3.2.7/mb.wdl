version 1.0

task Mb {
  input {
    Boolean? force_interactive_modenoninteractive
    Boolean? display_version_information
  }
  command <<<
    mb \
      ~{if (force_interactive_modenoninteractive) then "-i" else ""} \
      ~{if (display_version_information) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    force_interactive_modenoninteractive: "Force interactive mode\\nNon-interactive mode is the default when a filename is given\\nInteractive mode is the default when no filename is given"
    display_version_information: "Display version information and exit"
  }
  output {
    File out_stdout = stdout()
  }
}