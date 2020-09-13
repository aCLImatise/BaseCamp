version 1.0

task MafGapFrequencypy {
  command <<<
    maf_gap_frequency_py
  >>>
  output {
    File out_stdout = stdout()
  }
}