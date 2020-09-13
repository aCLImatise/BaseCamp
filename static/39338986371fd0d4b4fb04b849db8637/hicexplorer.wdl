version 1.0

task Hicexplorer {
  command <<<
    hicexplorer
  >>>
  output {
    File out_stdout = stdout()
  }
}