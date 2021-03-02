version 1.0

task Biopet {
  command <<<
    biopet
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}