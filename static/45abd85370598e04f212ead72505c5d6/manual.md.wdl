version 1.0

task Manualmd {
  command <<<
    manual_md
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}