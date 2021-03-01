version 1.0

task DamMet {
  command <<<
    DamMet
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}