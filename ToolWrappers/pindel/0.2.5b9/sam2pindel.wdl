version 1.0

task Sam2pindel {
  command <<<
    sam2pindel
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}