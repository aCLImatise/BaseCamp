version 1.0

task Fastatranslate {
  command <<<
    fastatranslate
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}