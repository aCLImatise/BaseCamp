version 1.0

task CheckmProfile {
  input {
    File? print_results_file
    Boolean? tab_table
    Boolean? quiet
    String coverage_file
  }
  command <<<
    checkm profile \
      ~{coverage_file} \
      ~{if defined(print_results_file) then ("--file " +  '"' + print_results_file + '"') else ""} \
      ~{if (tab_table) then "--tab_table" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    print_results_file: "print results to file (default: stdout)"
    tab_table: "print tab-separated values table"
    quiet: "suppress console output"
    coverage_file: "file indicating coverage of each sequence (see coverage command)"
  }
  output {
    File out_stdout = stdout()
  }
}