version 1.0

task Coverage3Erase {
  input {
    String? debug
    File? rcfile
  }
  command <<<
    coverage3 erase \
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