version 1.0

task PileupsToFreqTablepy {
  command <<<
    pileups_to_freq_table_py
  >>>
  output {
    File out_stdout = stdout()
  }
}