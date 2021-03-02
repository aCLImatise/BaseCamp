version 1.0

task Dreamtoolslayout {
  command <<<
    dreamtools_layout
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}