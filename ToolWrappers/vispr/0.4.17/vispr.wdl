version 1.0

task Vispr {
  input {
    Boolean? debug
  }
  command <<<
    vispr \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/vispr:0.4.17--pyh864c0ab_0"
  }
  parameter_meta {
    debug: "Print debug info."
  }
  output {
    File out_stdout = stdout()
  }
}