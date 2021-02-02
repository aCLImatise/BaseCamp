version 1.0

task Tsv2spectrastpy {
  command <<<
    tsv2spectrast_py
  >>>
  output {
    File out_stdout = stdout()
  }
}