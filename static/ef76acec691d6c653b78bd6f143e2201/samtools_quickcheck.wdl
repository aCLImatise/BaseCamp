version 1.0

task SamtoolsQuickcheck {
  input {
    Boolean? verbose_output_repeat
    Boolean? suppress_warning_messages
    Boolean? unmapped_input_require
    String status_dot
  }
  command <<<
    samtools quickcheck \
      ~{status_dot} \
      ~{if (verbose_output_repeat) then "-v" else ""} \
      ~{if (suppress_warning_messages) then "-q" else ""} \
      ~{if (unmapped_input_require) then "-u" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose_output_repeat: "verbose output (repeat for more verbosity)"
    suppress_warning_messages: "suppress warning messages"
    unmapped_input_require: "unmapped input (do not require targets in header)"
    status_dot: "One way to use quickcheck might be as a check that all BAM files in"
  }
  output {
    File out_stdout = stdout()
  }
}