version 1.0

task Qdelaunay {
  command <<<
    qdelaunay
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}