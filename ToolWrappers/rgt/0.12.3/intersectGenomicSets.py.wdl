version 1.0

task IntersectGenomicSetspy {
  command <<<
    intersectGenomicSets_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}