version 1.0

task Swalignpy {
  command <<<
    swalign_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}