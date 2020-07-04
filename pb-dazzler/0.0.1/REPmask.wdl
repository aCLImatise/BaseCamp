version 1.0

task REPmask {
  input {
    Boolean? verbose_mode_output
    Boolean? cutoff_depth_declaring
    Boolean? use_name_repeat
  }
  command <<<
    REPmask \
      ~{true="-v" false="" verbose_mode_output} \
      ~{true="-c" false="" cutoff_depth_declaring} \
      ~{true="-n" false="" use_name_repeat}
  >>>
  parameter_meta {
    verbose_mode_output: ": Verbose mode, output statistics as proceed."
    cutoff_depth_declaring: ": cutoff depth for declaring an interval repetitive."
    use_name_repeat: ": use this name as for the repeat mask track"
  }
}