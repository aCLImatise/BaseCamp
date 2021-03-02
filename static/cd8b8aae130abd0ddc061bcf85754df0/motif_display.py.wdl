version 1.0

task MotifDisplaypy {
  command <<<
    motif_display_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}