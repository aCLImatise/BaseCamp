version 1.0

task Glam2scan2html {
  command <<<
    glam2scan2html
  >>>
  runtime {
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  output {
    File out_stdout = stdout()
  }
}