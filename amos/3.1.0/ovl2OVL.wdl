version 1.0

task Ovl2OVL {
  input {
    Boolean? version_print_version
    Boolean? depend
    String? debug
    File file
  }
  command <<<
    ovl2OVL \
      ~{file} \
      ~{true="-V" false="" version_print_version} \
      ~{true="-depend" false="" depend} \
      ~{if defined(debug) then ("-debug " +  '"' + debug + '"') else ""}
  >>>
  parameter_meta {
    version_print_version: "|version      - Print the version and exit;"
    depend: "- Print the program and database dependency list;"
    debug: "- Set the debug <level> (0, non-debug by default); "
    file: ""
  }
}