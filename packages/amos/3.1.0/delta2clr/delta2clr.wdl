version 1.0

task Delta2clr {
  input {
    File? zero_cvg
    Boolean? version_print_version
    Boolean? depend
    Int? debug
  }
  command <<<
    delta2clr \
      ~{if defined(zero_cvg) then ("-zero_cvg " +  '"' + zero_cvg + '"') else ""} \
      ~{if (version_print_version) then "-V" else ""} \
      ~{if (depend) then "-depend" else ""} \
      ~{if defined(debug) then ("-debug " +  '"' + debug + '"') else ""}
  >>>
  parameter_meta {
    zero_cvg: "- File that contain zero coverage regions;\\nreads ending in these regions won't get trimmed"
    version_print_version: "|version      - Print the version and exit;"
    depend: "- Print the program and database dependency list;"
    debug: "- Set the debug <level> (0, non-debug by default);"
  }
  output {
    File out_stdout = stdout()
  }
}