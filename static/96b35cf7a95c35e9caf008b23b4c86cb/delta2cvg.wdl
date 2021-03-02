version 1.0

task Delta2cvg {
  input {
    Int? min_coverage_display
    Int? max_coverage_display
    Boolean? merge
    Boolean? version_print_version
    Boolean? depend
    Int? debug
    String delta_file
  }
  command <<<
    delta2cvg \
      ~{delta_file} \
      ~{if defined(min_coverage_display) then ("-m " +  '"' + min_coverage_display + '"') else ""} \
      ~{if defined(max_coverage_display) then ("-M " +  '"' + max_coverage_display + '"') else ""} \
      ~{if (merge) then "-merge" else ""} \
      ~{if (version_print_version) then "-V" else ""} \
      ~{if (depend) then "-depend" else ""} \
      ~{if defined(debug) then ("-debug " +  '"' + debug + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    min_coverage_display: "- Min coverage to display"
    max_coverage_display: "- Max coverage to display"
    merge: "- Merge coverage intervals"
    version_print_version: "|version      - Print the version and exit;"
    depend: "- Print the program and database dependency list;"
    debug: "- Set the debug <level> (0, non-debug by default);"
    delta_file: "#>Streptococcus_suis 2_14_26_F3 2007491 46"
  }
  output {
    File out_stdout = stdout()
  }
}