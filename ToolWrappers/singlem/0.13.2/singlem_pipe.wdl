version 1.0

task SinglemPipe {
  input {
    Boolean? full_help
    Boolean? quiet
    Boolean? debug
  }
  command <<<
    singlem pipe \
      ~{if (full_help) then "--full_help" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    full_help: ""
    quiet: ""
    debug: ""
  }
  output {
    File out_stdout = stdout()
  }
}