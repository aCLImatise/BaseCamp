version 1.0

task Glam2scan2html {
  command <<<
    glam2scan2html
  >>>
  output {
    File out_stdout = stdout()
  }
}