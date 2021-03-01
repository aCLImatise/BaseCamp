version 1.0

task ExtractCountFreqPpl {
  command <<<
    ExtractCountFreqP_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}