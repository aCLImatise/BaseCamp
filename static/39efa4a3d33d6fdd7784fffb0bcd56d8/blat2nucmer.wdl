version 1.0

task Blat2nucmer {
  command <<<
    blat2nucmer
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}