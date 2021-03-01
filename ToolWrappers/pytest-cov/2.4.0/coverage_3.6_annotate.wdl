version 1.0

task Coverage36Annotate {
  input {
    Directory? directory
    Boolean? ignore_errors
    Int? include
    Int? omit
    String? debug
    File? rcfile
    String? modules
  }
  command <<<
    coverage_3_6 annotate \
      ~{modules} \
      ~{if defined(directory) then ("--directory " +  '"' + directory + '"') else ""} \
      ~{if (ignore_errors) then "--ignore-errors" else ""} \
      ~{if defined(include) then ("--include " +  '"' + include + '"') else ""} \
      ~{if defined(omit) then ("--omit " +  '"' + omit + '"') else ""} \
      ~{if defined(debug) then ("--debug " +  '"' + debug + '"') else ""} \
      ~{if defined(rcfile) then ("--rcfile " +  '"' + rcfile + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    directory: "Write the output files to DIR."
    ignore_errors: "Ignore errors while reading source files."
    include: ",PAT2,...\\nInclude only files whose paths match one of these\\npatterns. Accepts shell-style wildcards, which must be\\nquoted."
    omit: ",PAT2,...  Omit files whose paths match one of these patterns.\\nAccepts shell-style wildcards, which must be quoted."
    debug: "Debug options, separated by commas"
    rcfile: "Specify configuration file.  Defaults to '.coveragerc'"
    modules: ""
  }
  output {
    File out_stdout = stdout()
  }
}