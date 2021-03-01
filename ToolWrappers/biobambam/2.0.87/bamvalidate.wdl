version 1.0

task Bamvalidate {
  command <<<
    bamvalidate
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}