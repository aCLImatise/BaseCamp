version 1.0

task Debubblepy {
  command <<<
    debubble_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}