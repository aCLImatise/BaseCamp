version 1.0

task Bamview {
  command <<<
    bamview
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}