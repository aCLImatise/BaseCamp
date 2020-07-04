version 1.0

task TANmask {
  input {
    Boolean? verbose_mode_output
    Boolean? shortest_tandem_interval
    Boolean? use_name_tandem
  }
  command <<<
    TANmask \
      ~{true="-v" false="" verbose_mode_output} \
      ~{true="-l" false="" shortest_tandem_interval} \
      ~{true="-n" false="" use_name_tandem}
  >>>
  parameter_meta {
    verbose_mode_output: ": Verbose mode, output statistics as proceed."
    shortest_tandem_interval: ": shortest tandem interval to report."
    use_name_tandem: ": use this name as for the tandem mask track"
  }
}