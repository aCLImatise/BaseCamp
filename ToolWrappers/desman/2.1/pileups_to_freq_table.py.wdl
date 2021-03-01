version 1.0

task PileupsToFreqTablepy {
  command <<<
    pileups_to_freq_table_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}