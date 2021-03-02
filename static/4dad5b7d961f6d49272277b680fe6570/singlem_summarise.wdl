version 1.0

task SinglemSummarise {
  input {
    Boolean? quiet
    Boolean? debug
    String single_m
  }
  command <<<
    singlem summarise \
      ~{single_m} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    quiet: ""
    debug: ""
    single_m: ""
  }
  output {
    File out_stdout = stdout()
  }
}