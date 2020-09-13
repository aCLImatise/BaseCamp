version 1.0

task MafWordFrequencypy {
  command <<<
    maf_word_frequency_py
  >>>
  output {
    File out_stdout = stdout()
  }
}