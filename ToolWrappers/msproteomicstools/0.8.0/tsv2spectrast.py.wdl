version 1.0

task Tsv2spectrastpy {
  command <<<
    tsv2spectrast_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}