version 1.0

task SinglemMakedb {
  input {
    Boolean? full_help
    Boolean? quiet
    Boolean? debug
  }
  command <<<
    singlem makedb \
      ~{if (full_help) then "--full_help" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    full_help: ""
    quiet: ""
    debug: ""
  }
  output {
    File out_stdout = stdout()
  }
}