version 1.0

task Whatshap {
  input {
    Boolean? debug
  }
  command <<<
    whatshap \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    debug: "Print debug messages"
  }
  output {
    File out_stdout = stdout()
  }
}