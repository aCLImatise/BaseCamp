version 1.0

task BedMergeOverlappingpy {
  command <<<
    bed_merge_overlapping_py
  >>>
  output {
    File out_stdout = stdout()
  }
}