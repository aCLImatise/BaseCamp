version 1.0

task Bamcollate2 {
  command <<<
    bamcollate2
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}