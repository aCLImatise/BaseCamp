version 1.0

task BedCountOverlappingpy {
  command <<<
    bed_count_overlapping_py
  >>>
  output {
    File out_stdout = stdout()
  }
}