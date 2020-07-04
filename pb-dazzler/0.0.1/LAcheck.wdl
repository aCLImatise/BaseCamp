version 1.0

task LAcheck {
  input {
    Boolean? verbose_mode_output
    Boolean? check_sorted_order
    Boolean? s_then_check
    Boolean? vas
  }
  command <<<
    LAcheck \
      ~{true="-v" false="" verbose_mode_output} \
      ~{true="-S" false="" check_sorted_order} \
      ~{true="-a" false="" s_then_check} \
      ~{true="-vaS" false="" vas}
  >>>
  parameter_meta {
    verbose_mode_output: ": Verbose mode, output error messages."
    check_sorted_order: ": Check that .las is in sorted order."
    s_then_check: ": If -S, then check sorted by A-read, A-position pairs off => check sorted by A,B-read pairs (LA-piles)"
    vas: ""
  }
}