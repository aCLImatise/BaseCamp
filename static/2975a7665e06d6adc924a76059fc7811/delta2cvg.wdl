version 1.0

task Delta2cvg {
  input {
    String? min_coverage_display
    String? max_coverage_display
    Boolean? merge
    Boolean? version_print_version
    Boolean? depend
    String? debug
  }
  command <<<
    delta2cvg \
      ~{if defined(min_coverage_display) then ("-m " +  '"' + min_coverage_display + '"') else ""} \
      ~{if defined(max_coverage_display) then ("-M " +  '"' + max_coverage_display + '"') else ""} \
      ~{true="-merge" false="" merge} \
      ~{true="-V" false="" version_print_version} \
      ~{true="-depend" false="" depend} \
      ~{if defined(debug) then ("-debug " +  '"' + debug + '"') else ""}
  >>>
  parameter_meta {
    min_coverage_display: "- Min coverage to display"
    max_coverage_display: "- Max coverage to display"
    merge: "- Merge coverage intervals "
    version_print_version: "|version      - Print the version and exit;"
    depend: "- Print the program and database dependency list;"
    debug: "- Set the debug <level> (0, non-debug by default); "
  }
}