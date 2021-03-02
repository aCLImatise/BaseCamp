version 1.0

task UpdateDeltaClr {
  input {
    Boolean? version_print_version
    Boolean? depend
    Int? debug
    String delta_file
    String clr_file
  }
  command <<<
    updateDeltaClr \
      ~{delta_file} \
      ~{clr_file} \
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
    delta_file: ""
    clr_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}