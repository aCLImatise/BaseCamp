version 1.0

task Skmer {
  input {
    Boolean? debug
  }
  command <<<
    skmer \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    debug: "Print the traceback when an exception is raised"
  }
  output {
    File out_stdout = stdout()
  }
}