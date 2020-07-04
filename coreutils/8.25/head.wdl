version 1.0

task Head {
  input {
    Boolean? bytes
    Boolean? lines
    String? silent
    String? verbose
    Boolean? zero_terminated
    String? option
  }
  command <<<
    head \
      ~{option} \
      ~{true="--bytes" false="" bytes} \
      ~{true="--lines" false="" lines} \
      ~{if defined(silent) then ("--silent " +  '"' + silent + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{true="--zero-terminated" false="" zero_terminated}
  >>>
  parameter_meta {
    bytes: "=[-]NUM       print the first NUM bytes of each file; with the leading '-', print all but the last NUM bytes of each file"
    lines: "=[-]NUM       print the first NUM lines instead of the first 10; with the leading '-', print all but the last NUM lines of each file"
    silent: "print headers giving file names"
    verbose: "print headers giving file names"
    zero_terminated: "line delimiter is NUL, not newline"
    option: ""
  }
}