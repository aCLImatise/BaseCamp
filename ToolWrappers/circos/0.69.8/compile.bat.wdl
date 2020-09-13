version 1.0

task Compilebat {
  command <<<
    compile_bat
  >>>
  output {
    File out_stdout = stdout()
  }
}