version 1.0

task Scaladocbat {
  command <<<
    scaladoc_bat
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}