version 1.0

task BedToPsl {
  command <<<
    bedToPsl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}