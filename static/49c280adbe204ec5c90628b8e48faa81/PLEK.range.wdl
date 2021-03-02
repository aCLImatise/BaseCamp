version 1.0

task PLEKrange {
  command <<<
    PLEK_range
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}