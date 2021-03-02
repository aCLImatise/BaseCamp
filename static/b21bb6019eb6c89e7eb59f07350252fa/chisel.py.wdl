version 1.0

task Chiselpy {
  command <<<
    chisel_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}