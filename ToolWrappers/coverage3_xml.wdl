version 1.0

task Coverage3Xml {
  input {
    Int? fail_under
    Boolean? ignore_errors
    Int? include
    Int? omit
    File? write_xml_report
    String? debug
    File? rcfile
    String? modules
  }
  command <<<
    coverage3 xml \
      ~{modules} \
      ~{if defined(fail_under) then ("--fail-under " +  '"' + fail_under + '"') else ""} \
      ~{if (ignore_errors) then "--ignore-errors" else ""} \
      ~{if defined(include) then ("--include " +  '"' + include + '"') else ""} \
      ~{if defined(omit) then ("--omit " +  '"' + omit + '"') else ""} \
      ~{if defined(write_xml_report) then ("-o " +  '"' + write_xml_report + '"') else ""} \
      ~{if defined(debug) then ("--debug " +  '"' + debug + '"') else ""} \
      ~{if defined(rcfile) then ("--rcfile " +  '"' + rcfile + '"') else ""}
  >>>
  parameter_meta {
    fail_under: "Exit with a status of 2 if the total coverage is less\\nthan MIN."
    ignore_errors: "Ignore errors while reading source files."
    include: ",PAT2,...\\nInclude only files whose paths match one of these\\npatterns. Accepts shell-style wildcards, which must be\\nquoted."
    omit: ",PAT2,...  Omit files whose paths match one of these patterns.\\nAccepts shell-style wildcards, which must be quoted."
    write_xml_report: "Write the XML report to this file. Defaults to\\n'coverage.xml'"
    debug: "Debug options, separated by commas"
    rcfile: "Specify configuration file.  Defaults to '.coveragerc'"
    modules: ""
  }
  output {
    File out_stdout = stdout()
  }
}