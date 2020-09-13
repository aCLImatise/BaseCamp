version 1.0

task Wdl {
  input {
    Boolean? debug
    Boolean? no_color
  }
  command <<<
    wdl \
      ~{if (debug) then "--debug" else ""} \
      ~{if (no_color) then "--no-color" else ""}
  >>>
  parameter_meta {
    debug: "Open the floodgates"
    no_color: "Don't colorize output"
  }
  output {
    File out_stdout = stdout()
  }
}