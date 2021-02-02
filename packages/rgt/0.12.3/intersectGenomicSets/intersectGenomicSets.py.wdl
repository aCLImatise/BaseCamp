version 1.0

task IntersectGenomicSetspy {
  command <<<
    intersectGenomicSets_py
  >>>
  output {
    File out_stdout = stdout()
  }
}