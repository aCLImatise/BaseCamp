version 1.0

task OverlapStoreSorter {
  command <<<
    overlapStoreSorter
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}