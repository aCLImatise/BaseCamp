version 1.0

task Bed2region {
  command <<<
    bed2region
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}