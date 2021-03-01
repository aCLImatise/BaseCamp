version 1.0

task Nucmer2ovl {
  input {
    Boolean? tab
    Int? ignore
    Boolean? version_print_version
    Boolean? depend
    Int? debug
    File var_file
  }
  command <<<
    nucmer2ovl \
      ~{var_file} \
      ~{if (tab) then "-tab" else ""} \
      ~{if defined(ignore) then ("-ignore " +  '"' + ignore + '"') else ""} \
      ~{if (version_print_version) then "-V" else ""} \
      ~{if (depend) then "-depend" else ""} \
      ~{if defined(debug) then ("-debug " +  '"' + debug + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tab: "- Output format (Default: AMOS)"
    ignore: "- Maximum length of the end sequence unaligned (Default: 20 bp)"
    version_print_version: "|version      - Print the version and exit;"
    depend: "- Print the program and database dependency list;"
    debug: "- Set the debug <level> (0, non-debug by default);"
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}