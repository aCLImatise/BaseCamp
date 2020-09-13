version 1.0

task TANmask {
  input {
    Boolean? verbose_mode_output
    Boolean? shortest_tandem_interval
    Boolean? use_name_tandem
  }
  command <<<
    TANmask \
      ~{if (verbose_mode_output) then "-v" else ""} \
      ~{if (shortest_tandem_interval) then "-l" else ""} \
      ~{if (use_name_tandem) then "-n" else ""}
  >>>
  parameter_meta {
    verbose_mode_output: ": Verbose mode, output statistics as proceed."
    shortest_tandem_interval: ": shortest tandem interval to report."
    use_name_tandem: ": use this name as for the tandem mask track"
  }
  output {
    File out_stdout = stdout()
  }
}