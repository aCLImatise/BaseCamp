version 1.0

task Nucmer2ovl {
  input {
    Boolean? tab
    String? ignore
    Boolean? version_print_version
    Boolean? depend
    String? debug
    File file
  }
  command <<<
    nucmer2ovl \
      ~{file} \
      ~{true="-tab" false="" tab} \
      ~{if defined(ignore) then ("-ignore " +  '"' + ignore + '"') else ""} \
      ~{true="-V" false="" version_print_version} \
      ~{true="-depend" false="" depend} \
      ~{if defined(debug) then ("-debug " +  '"' + debug + '"') else ""}
  >>>
  parameter_meta {
    tab: "- Output format (Default: AMOS)"
    ignore: "- Maximum length of the end sequence unaligned (Default: 20 bp)"
    version_print_version: "|version      - Print the version and exit;"
    depend: "- Print the program and database dependency list;"
    debug: "- Set the debug <level> (0, non-debug by default); "
    file: ""
  }
}