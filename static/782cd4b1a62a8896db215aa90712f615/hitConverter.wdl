version 1.0

task HitConverter {
  command <<<
    hitConverter
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}