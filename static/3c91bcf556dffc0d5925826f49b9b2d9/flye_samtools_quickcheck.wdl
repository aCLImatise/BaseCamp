version 1.0

task FlyesamtoolsQuickcheck {
  input {
    Boolean? verbose_output_repeat
    Boolean? suppress_warning_messages
    String status_dot
  }
  command <<<
    flye_samtools quickcheck \
      ~{status_dot} \
      ~{if (verbose_output_repeat) then "-v" else ""} \
      ~{if (suppress_warning_messages) then "-q" else ""}
  >>>
  parameter_meta {
    verbose_output_repeat: "verbose output (repeat for more verbosity)"
    suppress_warning_messages: "suppress warning messages"
    status_dot: "One way to use quickcheck might be as a check that all BAM files in"
  }
  output {
    File out_stdout = stdout()
  }
}