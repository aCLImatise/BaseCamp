version 1.0

task Compilemake {
  command <<<
    compile_make
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}