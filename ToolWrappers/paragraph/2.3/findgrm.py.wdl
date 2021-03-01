version 1.0

task Findgrmpy {
  command <<<
    findgrm_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}