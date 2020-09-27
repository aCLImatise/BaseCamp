version 1.0

task MafMappingWordFrequencypy {
  command <<<
    maf_mapping_word_frequency_py
  >>>
  output {
    File out_stdout = stdout()
  }
}