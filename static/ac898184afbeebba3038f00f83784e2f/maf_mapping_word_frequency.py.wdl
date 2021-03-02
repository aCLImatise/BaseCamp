version 1.0

task MafMappingWordFrequencypy {
  command <<<
    maf_mapping_word_frequency_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}