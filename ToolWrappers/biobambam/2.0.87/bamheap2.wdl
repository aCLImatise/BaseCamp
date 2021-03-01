version 1.0

task Bamheap2 {
  command <<<
    bamheap2
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}