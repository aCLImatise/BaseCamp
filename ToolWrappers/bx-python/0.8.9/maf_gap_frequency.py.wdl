version 1.0

task MafGapFrequencypy {
  command <<<
    maf_gap_frequency_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}