version 1.0

task Miniasm {
  input {
    Boolean? prefilter_clearly_contained
    Int? min_match_length
    Float? min_identity
    Int? min_span
    Int? min_coverage
    Int? min_overlap
    Int? max_hang_length
    Float? min_endtoend_match
    Int? max_gap_differences
    Int? max_distance_bubble
    Int? small_unitig_threshold
    File? read_sequences
    Int? rounds_short_overlap
    Array[Float] max_min_overlap
    Float? aggressive_overlap_drop
    String? output_information_bed
    Boolean? directions_arc_present
    Boolean? one
    Boolean? two
    Boolean? print_version_number
    String in_dot_paf
  }
  command <<<
    miniasm \
      ~{in_dot_paf} \
      ~{if (prefilter_clearly_contained) then "-R" else ""} \
      ~{if defined(min_match_length) then ("-m " +  '"' + min_match_length + '"') else ""} \
      ~{if defined(min_identity) then ("-i " +  '"' + min_identity + '"') else ""} \
      ~{if defined(min_span) then ("-s " +  '"' + min_span + '"') else ""} \
      ~{if defined(min_coverage) then ("-c " +  '"' + min_coverage + '"') else ""} \
      ~{if defined(min_overlap) then ("-o " +  '"' + min_overlap + '"') else ""} \
      ~{if defined(max_hang_length) then ("-h " +  '"' + max_hang_length + '"') else ""} \
      ~{if defined(min_endtoend_match) then ("-I " +  '"' + min_endtoend_match + '"') else ""} \
      ~{if defined(max_gap_differences) then ("-g " +  '"' + max_gap_differences + '"') else ""} \
      ~{if defined(max_distance_bubble) then ("-d " +  '"' + max_distance_bubble + '"') else ""} \
      ~{if defined(small_unitig_threshold) then ("-e " +  '"' + small_unitig_threshold + '"') else ""} \
      ~{if defined(read_sequences) then ("-f " +  '"' + read_sequences + '"') else ""} \
      ~{if defined(rounds_short_overlap) then ("-n " +  '"' + rounds_short_overlap + '"') else ""} \
      ~{if defined(max_min_overlap) then ("-r " +  '"' + max_min_overlap + '"') else ""} \
      ~{if defined(aggressive_overlap_drop) then ("-F " +  '"' + aggressive_overlap_drop + '"') else ""} \
      ~{if defined(output_information_bed) then ("-p " +  '"' + output_information_bed + '"') else ""} \
      ~{if (directions_arc_present) then "-b" else ""} \
      ~{if (one) then "-1" else ""} \
      ~{if (two) then "-2" else ""} \
      ~{if (print_version_number) then "-V" else ""}
  >>>
  parameter_meta {
    prefilter_clearly_contained: "prefilter clearly contained reads (2-pass required)"
    min_match_length: "min match length [100]"
    min_identity: "min identity [0.05]"
    min_span: "min span [2000]"
    min_coverage: "min coverage [3]"
    min_overlap: "min overlap [same as -s]"
    max_hang_length: "max over hang length [0]"
    min_endtoend_match: "min end-to-end match ratio [0.8]"
    max_gap_differences: "max gap differences between reads for trans-reduction [1000]"
    max_distance_bubble: "max distance for bubble popping [50000]"
    small_unitig_threshold: "small unitig threshold [4]"
    read_sequences: "read sequences []"
    rounds_short_overlap: "rounds of short overlap removal [3]"
    max_min_overlap: "max and min overlap drop ratio [0.7,0.5]"
    aggressive_overlap_drop: "aggressive overlap drop ratio in the end [0.8]"
    output_information_bed: "output information: bed, paf, sg or ug [ug]"
    directions_arc_present: "both directions of an arc are present in input"
    one: "skip 1-pass read selection"
    two: "skip 2-pass read selection"
    print_version_number: "print version number"
    in_dot_paf: ""
  }
  output {
    File out_stdout = stdout()
  }
}