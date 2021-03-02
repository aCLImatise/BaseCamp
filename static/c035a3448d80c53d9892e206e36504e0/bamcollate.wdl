version 1.0

task Bamcollate {
  command <<<
    bamcollate
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}