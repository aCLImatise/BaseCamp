version 1.0

task ExtractKmerspy {
  command <<<
    ExtractKmers_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}