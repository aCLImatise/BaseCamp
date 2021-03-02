version 1.0

task Glam2html {
  command <<<
    glam2html
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}