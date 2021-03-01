version 1.0

task Head {
  input {
    Boolean? bytes
    Boolean? lines
    Boolean? silent
    Boolean? verbose
    Boolean? zero_terminated
  }
  command <<<
    head \
      ~{if (bytes) then "--bytes" else ""} \
      ~{if (lines) then "--lines" else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (zero_terminated) then "--zero-terminated" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bytes: "=[-]NUM       print the first NUM bytes of each file;\\nwith the leading '-', print all but the last\\nNUM bytes of each file"
    lines: "=[-]NUM       print the first NUM lines instead of the first 10;\\nwith the leading '-', print all but the last\\nNUM lines of each file"
    silent: "never print headers giving file names"
    verbose: "always print headers giving file names"
    zero_terminated: "line delimiter is NUL, not newline"
  }
  output {
    File out_stdout = stdout()
  }
}