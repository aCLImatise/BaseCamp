version 1.0

task BedMergeOverlappingpy {
  command <<<
    bed_merge_overlapping_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}