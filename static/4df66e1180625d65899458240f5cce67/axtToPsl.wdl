version 1.0

task AxtToPsl {
  command <<<
    axtToPsl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}