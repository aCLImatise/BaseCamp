version 1.0

task Sam2fq {
  command <<<
    sam2fq
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}