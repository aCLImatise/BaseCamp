version 1.0

task PLEKmodel {
  command <<<
    PLEK_model
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}