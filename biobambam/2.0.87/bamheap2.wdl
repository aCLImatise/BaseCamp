version 1.0

task Bamheap2 {
  command <<<
    bamheap2
  >>>
  output {
    File out_stdout = stdout()
  }
}