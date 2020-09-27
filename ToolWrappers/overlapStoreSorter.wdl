version 1.0

task OverlapStoreSorter {
  command <<<
    overlapStoreSorter
  >>>
  output {
    File out_stdout = stdout()
  }
}