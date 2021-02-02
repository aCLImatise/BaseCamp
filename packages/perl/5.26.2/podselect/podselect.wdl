version 1.0

task Podselect {
  input {
    Boolean? man
    String? section
    File file
  }
  command <<<
    podselect \
      ~{file} \
      ~{if (man) then "-man" else ""} \
      ~{if defined(section) then ("-section " +  '"' + section + '"') else ""}
  >>>
  parameter_meta {
    man: "Print the manual page and exit."
    section: "Specify a section to include in the output. See \\\"SECTION\\nSPECIFICATIONS\\\" in Pod::Parser for the format to use for\\nsection-spec. This option may be given multiple times on the\\ncommand line."
    file: "The pathname of a file from which to select sections of pod\\ndocumentation (defaults to standard input).\\n"
  }
  output {
    File out_stdout = stdout()
  }
}