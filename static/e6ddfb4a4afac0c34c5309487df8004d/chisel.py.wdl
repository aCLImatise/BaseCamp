version 1.0

task Chiselpy {
  command <<<
    chisel_py
  >>>
  output {
    File out_stdout = stdout()
  }
}