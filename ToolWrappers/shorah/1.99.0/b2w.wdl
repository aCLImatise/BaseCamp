version 1.0

task B2w {
  input {
    Boolean? window_length_int
    Boolean? _increment_int
    Boolean? minimum_overlap_int
    Boolean? max_reads_starting
    Boolean? coverage_threshold_windows
    Boolean? drop_snvs_are
    String in_dot_bam
    String in_dot_fast_a
    String? region
  }
  command <<<
    b2w \
      ~{in_dot_bam} \
      ~{in_dot_fast_a} \
      ~{region} \
      ~{if (window_length_int) then "-w" else ""} \
      ~{if (_increment_int) then "-i" else ""} \
      ~{if (minimum_overlap_int) then "-m" else ""} \
      ~{if (max_reads_starting) then "-x" else ""} \
      ~{if (coverage_threshold_windows) then "-c" else ""} \
      ~{if (drop_snvs_are) then "-d" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    window_length_int: ": window length (INT)"
    _increment_int: ": increment (INT)"
    minimum_overlap_int: ": minimum overlap (INT)"
    max_reads_starting: ": max reads starting at a position (INT)"
    coverage_threshold_windows: ": coverage threshold. Omit windows with low coverage (INT)"
    drop_snvs_are: ": drop SNVs that are adjacent to insertions/deletions (alternate behaviour)"
    in_dot_bam: ""
    in_dot_fast_a: ""
    region: ""
  }
  output {
    File out_stdout = stdout()
  }
}