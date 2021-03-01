version 1.0

task MafWordFrequencypy {
  command <<<
    maf_word_frequency_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}