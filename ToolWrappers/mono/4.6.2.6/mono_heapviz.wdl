version 1.0

task Monoheapviz {
  command <<<
    mono_heapviz
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}