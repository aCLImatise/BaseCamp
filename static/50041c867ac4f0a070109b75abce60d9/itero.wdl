version 1.0

task Itero {
  input {
    Boolean? v
    String help_help_info
  }
  command <<<
    itero \
      ~{help_help_info} \
      ~{true="-V" false="" v}
  >>>
  parameter_meta {
    v: ""
    help_help_info: "help         Get help info on a itero command. assemble     Assemble cleaned/trimmed sequencing reads. check        Check to ensure binaries are installed and configured."
  }
}