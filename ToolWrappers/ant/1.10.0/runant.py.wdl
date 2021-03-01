version 1.0

task Runantpy {
  command <<<
    runant_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}