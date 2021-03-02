version 1.0

task Sentieon {
  command <<<
    sentieon
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}