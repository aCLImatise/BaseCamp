version 1.0

task Hicexplorer {
  command <<<
    hicexplorer
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}