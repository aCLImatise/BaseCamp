version 1.0

task Dammit {
  input {
    Boolean? debug
  }
  command <<<
    dammit \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    debug: ""
  }
  output {
    File out_stdout = stdout()
  }
}