version 1.0

task Compilebat {
  command <<<
    compile_bat
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}