version 1.0

task Biodiff {
  command <<<
    biodiff
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}