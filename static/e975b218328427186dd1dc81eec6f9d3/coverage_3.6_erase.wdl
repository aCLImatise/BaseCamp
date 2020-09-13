version 1.0

task Coverage36Erase {
  input {
    String? debug
    File? rcfile
  }
  command <<<
    coverage_3_6 erase \
      ~{if defined(debug) then ("--debug " +  '"' + debug + '"') else ""} \
      ~{if defined(rcfile) then ("--rcfile " +  '"' + rcfile + '"') else ""}
  >>>
  parameter_meta {
    debug: "Debug options, separated by commas"
    rcfile: "Specify configuration file.  Defaults to '.coveragerc'"
  }
  output {
    File out_stdout = stdout()
  }
}