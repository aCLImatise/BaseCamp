version 1.0

task DendroR {
  command <<<
    dendro_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}