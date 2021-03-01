version 1.0

task Ts {
  command <<<
    ts
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}