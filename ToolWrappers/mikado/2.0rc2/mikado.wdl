version 1.0

task Mikado {
  command <<<
    mikado
  >>>
  output {
    File out_stdout = stdout()
  }
}