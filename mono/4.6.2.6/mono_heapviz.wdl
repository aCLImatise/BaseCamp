version 1.0

task Monoheapviz {
  command <<<
    mono_heapviz
  >>>
  output {
    File out_stdout = stdout()
  }
}