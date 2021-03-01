version 1.0

task Sam2bed {
  command <<<
    sam2bed
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}