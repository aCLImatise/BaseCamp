version 1.0

task ChewBBACApy {
  command <<<
    chewBBACA_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}