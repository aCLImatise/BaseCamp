version 1.0

task Lav2maf {
  command <<<
    lav2maf
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}