version 1.0

task FlyeSamtoolsQuickcheck {
  input {
    Boolean? verbose_output_repeat
    Boolean? suppress_warning_messages
    String sam_tools
    String quickcheck
    String var_input
  }
  command <<<
    flye-samtools quickcheck \
      ~{sam_tools} \
      ~{quickcheck} \
      ~{var_input} \
      ~{true="-v" false="" verbose_output_repeat} \
      ~{true="-q" false="" suppress_warning_messages}
  >>>
  parameter_meta {
    verbose_output_repeat: "verbose output (repeat for more verbosity)"
    suppress_warning_messages: "suppress warning messages"
    sam_tools: ""
    quickcheck: ""
    var_input: ""
  }
}