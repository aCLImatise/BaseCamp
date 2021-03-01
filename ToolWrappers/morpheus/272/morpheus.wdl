version 1.0

task Morpheus {
  command <<<
    morpheus
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}