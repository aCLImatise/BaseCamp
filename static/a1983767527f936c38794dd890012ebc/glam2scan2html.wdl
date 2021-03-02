version 1.0

task Glam2scan2html {
  command <<<
    glam2scan2html
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}