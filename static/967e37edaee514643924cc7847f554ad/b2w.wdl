version 1.0

task B2w {
  input {
    Boolean? window_length_int
    Boolean? _increment_int
    Boolean? minimum_overlap_int
    Boolean? max_reads_starting
    Boolean? coverage_threshold_windows
    Boolean? drop_snvs_behaviour
    String in_dot_bam
    String in_dot_fast_a
    String? region
  }
  command <<<
    b2w \
      ~{in_dot_bam} \
      ~{in_dot_fast_a} \
      ~{region} \
      ~{true="-w" false="" window_length_int} \
      ~{true="-i" false="" _increment_int} \
      ~{true="-m" false="" minimum_overlap_int} \
      ~{true="-x" false="" max_reads_starting} \
      ~{true="-c" false="" coverage_threshold_windows} \
      ~{true="-d" false="" drop_snvs_behaviour}
  >>>
  parameter_meta {
    window_length_int: ": window length (INT)"
    _increment_int: ": increment (INT)"
    minimum_overlap_int: ": minimum overlap (INT)"
    max_reads_starting: ": max reads starting at a position (INT)"
    coverage_threshold_windows: ": coverage threshold. Omit windows with low coverage (INT)"
    drop_snvs_behaviour: ": drop SNVs that are adjacent to insertions/deletions (alternate behaviour)"
    in_dot_bam: ""
    in_dot_fast_a: ""
    region: ""
  }
}