version 1.0

task Coverage36Combine {
  input {
    Boolean? append
    String? debug
    File? rcfile
    String path_n
  }
  command <<<
    coverage_3_6 combine \
      ~{path_n} \
      ~{if (append) then "--append" else ""} \
      ~{if defined(debug) then ("--debug " +  '"' + debug + '"') else ""} \
      ~{if defined(rcfile) then ("--rcfile " +  '"' + rcfile + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    append: "Append coverage data to .coverage, otherwise it starts\\nclean each time."
    debug: "Debug options, separated by commas"
    rcfile: "Specify configuration file.  Defaults to '.coveragerc'"
    path_n: ""
  }
  output {
    File out_stdout = stdout()
  }
}