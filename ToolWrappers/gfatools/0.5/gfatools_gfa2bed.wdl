version 1.0

task GfatoolsGfa2bed {
  input {
    Boolean? merge_adjacent_intervals
    String in_dot_gfa
  }
  command <<<
    gfatools gfa2bed \
      ~{in_dot_gfa} \
      ~{if (merge_adjacent_intervals) then "-s" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gfatools:0.5--hed695b0_0"
  }
  parameter_meta {
    merge_adjacent_intervals: "merge adjacent intervals on stable sequences"
    in_dot_gfa: ""
  }
  output {
    File out_stdout = stdout()
  }
}