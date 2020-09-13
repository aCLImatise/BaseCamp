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
      ~{if (verbose_mode_output) then "-v" else ""} \
      ~{if (check_sorted_order) then "-S" else ""} \
      ~{if (s_then_check) then "-a" else ""} \
      ~{if (vas) then "-vaS" else ""}
  >>>
  parameter_meta {
    verbose_mode_output: ": Verbose mode, output error messages."
    check_sorted_order: ": Check that .las is in sorted order."
    s_then_check: ": If -S, then check sorted by A-read, A-position pairs\\noff => check sorted by A,B-read pairs (LA-piles)\\n"
    vas: ""
  }
  output {
    File out_stdout = stdout()
  }
}