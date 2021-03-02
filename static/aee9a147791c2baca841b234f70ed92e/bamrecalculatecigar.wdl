version 1.0

task Bamrecalculatecigar {
  command <<<
    bamrecalculatecigar
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}