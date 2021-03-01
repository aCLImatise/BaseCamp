version 1.0

task ReadFastxpy {
  command <<<
    read_fastx_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}