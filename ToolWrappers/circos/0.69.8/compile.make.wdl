version 1.0

task Compilemake {
  command <<<
    compile_make
  >>>
  output {
    File out_stdout = stdout()
  }
}