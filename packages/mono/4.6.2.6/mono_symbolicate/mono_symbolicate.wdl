version 1.0

task Monosymbolicate {
  input {
    Boolean? quiet_warnings_displayed
    Boolean? verbose_log_debug
  }
  command <<<
    mono_symbolicate \
      ~{if (quiet_warnings_displayed) then "-q" else ""} \
      ~{if (verbose_log_debug) then "-v" else ""}
  >>>
  parameter_meta {
    quiet_warnings_displayed: "Quiet, warnings are not displayed"
    verbose_log_debug: "Verbose, log debug messages"
  }
  output {
    File out_stdout = stdout()
  }
}