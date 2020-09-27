version 1.0

task Sn {
  input {
    Boolean? quiet_quiet_mode
  }
  command <<<
    sn \
      ~{if (quiet_quiet_mode) then "-q" else ""}
  >>>
  parameter_meta {
    quiet_quiet_mode: "| -quiet            Quiet mode (minimal display)"
  }
  output {
    File out_stdout = stdout()
  }
}