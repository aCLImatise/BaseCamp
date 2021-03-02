version 1.0

task Ovcpy {
  command <<<
    ovc_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}