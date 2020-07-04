version 1.0

task BwaBwasw {
  input {
    Int? score_for_match
    Int? mismatch_penalty
    Int? gap_open_penalty
    Int? gap_extension_penalty
    Int? band_width
    Float? mask_level
    Int? number_of_threads
    File? file_output_results
    Boolean? sam_output_use
    Boolean? copy_fastaq_comment
    Boolean? mark_multipart_alignments
    Boolean? skip_smithwaterman_read
    Int? ignore_pairs_insert
    Int? score_threshold_divided
    Float? coefficient_lengththreshold_adjustment
    Int? zbest
    Int? maximum_seeding_interval
    Int? seeds_trigger_int
    Int? maximum_gap_size
    String target_dot_prefix
    String query_dot_fa
    String? query_two_dot_fa
  }
  command <<<
    bwa bwasw \
      ~{target_dot_prefix} \
      ~{query_dot_fa} \
      ~{query_two_dot_fa} \
      ~{if defined(score_for_match) then ("-a " +  '"' + score_for_match + '"') else ""} \
      ~{if defined(mismatch_penalty) then ("-b " +  '"' + mismatch_penalty + '"') else ""} \
      ~{if defined(gap_open_penalty) then ("-q " +  '"' + gap_open_penalty + '"') else ""} \
      ~{if defined(gap_extension_penalty) then ("-r " +  '"' + gap_extension_penalty + '"') else ""} \
      ~{if defined(band_width) then ("-w " +  '"' + band_width + '"') else ""} \
      ~{if defined(mask_level) then ("-m " +  '"' + mask_level + '"') else ""} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(file_output_results) then ("-f " +  '"' + file_output_results + '"') else ""} \
      ~{true="-H" false="" sam_output_use} \
      ~{true="-C" false="" copy_fastaq_comment} \
      ~{true="-M" false="" mark_multipart_alignments} \
      ~{true="-S" false="" skip_smithwaterman_read} \
      ~{if defined(ignore_pairs_insert) then ("-I " +  '"' + ignore_pairs_insert + '"') else ""} \
      ~{if defined(score_threshold_divided) then ("-T " +  '"' + score_threshold_divided + '"') else ""} \
      ~{if defined(coefficient_lengththreshold_adjustment) then ("-c " +  '"' + coefficient_lengththreshold_adjustment + '"') else ""} \
      ~{if defined(zbest) then ("-z " +  '"' + zbest + '"') else ""} \
      ~{if defined(maximum_seeding_interval) then ("-s " +  '"' + maximum_seeding_interval + '"') else ""} \
      ~{if defined(seeds_trigger_int) then ("-N " +  '"' + seeds_trigger_int + '"') else ""} \
      ~{if defined(maximum_gap_size) then ("-G " +  '"' + maximum_gap_size + '"') else ""}
  >>>
  parameter_meta {
    score_for_match: "score for a match [1]"
    mismatch_penalty: "mismatch penalty [3]"
    gap_open_penalty: "gap open penalty [5]"
    gap_extension_penalty: "gap extension penalty [2]"
    band_width: "band width [50]"
    mask_level: "mask level [0.50]"
    number_of_threads: "number of threads [1]"
    file_output_results: "file to output results to instead of stdout"
    sam_output_use: "in SAM output, use hard clipping instead of soft clipping"
    copy_fastaq_comment: "copy FASTA/Q comment to SAM output"
    mark_multipart_alignments: "mark multi-part alignments as secondary"
    skip_smithwaterman_read: "skip Smith-Waterman read pairing"
    ignore_pairs_insert: "ignore pairs with insert >=INT for inferring the size distr [20000]"
    score_threshold_divided: "score threshold divided by a [30]"
    coefficient_lengththreshold_adjustment: "coefficient of length-threshold adjustment [5.5]"
    zbest: "Z-best [1]"
    maximum_seeding_interval: "maximum seeding interval size [3]"
    seeds_trigger_int: "# seeds to trigger rev aln; 2*INT is also the chaining threshold [5]"
    maximum_gap_size: "maximum gap size during chaining [10000]"
    target_dot_prefix: ""
    query_dot_fa: ""
    query_two_dot_fa: ""
  }
}