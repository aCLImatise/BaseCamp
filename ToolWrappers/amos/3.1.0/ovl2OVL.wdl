version 1.0

task Ovl2OVL {
  input {
    Boolean? version_print_version
    Boolean? depend
    Int? debug
    File var_file
  }
  command <<<
    ovl2OVL \
      ~{var_file} \
      ~{if (version_print_version) then "-V" else ""} \
      ~{if (depend) then "-depend" else ""} \
      ~{if defined(debug) then ("-debug " +  '"' + debug + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    version_print_version: "|version      - Print the version and exit;"
    depend: "- Print the program and database dependency list;"
    debug: "- Set the debug <level> (0, non-debug by default);"
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}