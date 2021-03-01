version 1.0

task BedCountOverlappingpy {
  command <<<
    bed_count_overlapping_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}