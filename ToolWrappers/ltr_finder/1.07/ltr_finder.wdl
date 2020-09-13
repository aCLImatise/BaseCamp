version 1.0

task LtrFinder {
  input {
    Int? gap_open_penalty
    Int? gap_extension_penalty
    Int? gap_end_penalty
    Int? match_score_default
    Int? unmatch_score_default
    Int? max_distance_ltr
    Int? min_distance_ltr
    Int? max_length_ltr
    Int? min_length_ltr
    Int? min_length_exact
    Int? max_gap_joined
    Int? max_gap_rt
    Int? min_found_rt
    Int? threshold_join_new
    Int? threshold_split_existed
    Int? output_score_limit
    Int? min_ltr_similarity
    Int? boundary_alignment_sharpness_threshold_oneone
    Int? boundary_alignment_sharpness_threshold_oneboth
    Int? pbs_detecting_threshold
    Int? output_format_table
    Int? output_alignment_lengthonly
    String? seqids_will_only
    File? trna_sequence_filefasta
    File? data_file_used
    String? use_psscan_predict
    Boolean? output_html_format
    Boolean? ltr_must_edge
    Boolean? detect_centriole_delete
    Int? filter_choose_resultdefault
  }
  command <<<
    ltr_finder \
      ~{if defined(gap_open_penalty) then ("-o " +  '"' + gap_open_penalty + '"') else ""} \
      ~{if defined(gap_extension_penalty) then ("-t " +  '"' + gap_extension_penalty + '"') else ""} \
      ~{if defined(gap_end_penalty) then ("-e " +  '"' + gap_end_penalty + '"') else ""} \
      ~{if defined(match_score_default) then ("-m " +  '"' + match_score_default + '"') else ""} \
      ~{if defined(unmatch_score_default) then ("-u " +  '"' + unmatch_score_default + '"') else ""} \
      ~{if defined(max_distance_ltr) then ("-D " +  '"' + max_distance_ltr + '"') else ""} \
      ~{if defined(min_distance_ltr) then ("-d " +  '"' + min_distance_ltr + '"') else ""} \
      ~{if defined(max_length_ltr) then ("-L " +  '"' + max_length_ltr + '"') else ""} \
      ~{if defined(min_length_ltr) then ("-l " +  '"' + min_length_ltr + '"') else ""} \
      ~{if defined(min_length_exact) then ("-p " +  '"' + min_length_exact + '"') else ""} \
      ~{if defined(max_gap_joined) then ("-g " +  '"' + max_gap_joined + '"') else ""} \
      ~{if defined(max_gap_rt) then ("-G " +  '"' + max_gap_rt + '"') else ""} \
      ~{if defined(min_found_rt) then ("-T " +  '"' + min_found_rt + '"') else ""} \
      ~{if defined(threshold_join_new) then ("-j " +  '"' + threshold_join_new + '"') else ""} \
      ~{if defined(threshold_split_existed) then ("-J " +  '"' + threshold_split_existed + '"') else ""} \
      ~{if defined(output_score_limit) then ("-S " +  '"' + output_score_limit + '"') else ""} \
      ~{if defined(min_ltr_similarity) then ("-M " +  '"' + min_ltr_similarity + '"') else ""} \
      ~{if defined(boundary_alignment_sharpness_threshold_oneone) then ("-B " +  '"' + boundary_alignment_sharpness_threshold_oneone + '"') else ""} \
      ~{if defined(boundary_alignment_sharpness_threshold_oneboth) then ("-b " +  '"' + boundary_alignment_sharpness_threshold_oneboth + '"') else ""} \
      ~{if defined(pbs_detecting_threshold) then ("-r " +  '"' + pbs_detecting_threshold + '"') else ""} \
      ~{if defined(output_format_table) then ("-w " +  '"' + output_format_table + '"') else ""} \
      ~{if defined(output_alignment_lengthonly) then ("-O " +  '"' + output_alignment_lengthonly + '"') else ""} \
      ~{if defined(seqids_will_only) then ("-P " +  '"' + seqids_will_only + '"') else ""} \
      ~{if defined(trna_sequence_filefasta) then ("-s " +  '"' + trna_sequence_filefasta + '"') else ""} \
      ~{if defined(data_file_used) then ("-f " +  '"' + data_file_used + '"') else ""} \
      ~{if defined(use_psscan_predict) then ("-a " +  '"' + use_psscan_predict + '"') else ""} \
      ~{if (output_html_format) then "-x" else ""} \
      ~{if (ltr_must_edge) then "-E" else ""} \
      ~{if (detect_centriole_delete) then "-C" else ""} \
      ~{if defined(filter_choose_resultdefault) then ("-F " +  '"' + filter_choose_resultdefault + '"') else ""}
  >>>
  parameter_meta {
    gap_open_penalty: "gap open penalty, default is 3"
    gap_extension_penalty: "gap extension penalty, default is 1"
    gap_end_penalty: "gap end penalty, default is 0"
    match_score_default: "match score, default is 2"
    unmatch_score_default: "unmatch score, default is -2"
    max_distance_ltr: "Max distance between 5'&3'LTR, default is 20000"
    min_distance_ltr: "Min distance between 5'&3'LTR, default is 1000"
    max_length_ltr: "Max length of 5'&3'LTR, default is 3500"
    min_length_ltr: "Min length of 5'&3'LTR, default is 100"
    min_length_exact: "min length of exact match pair, default is 20"
    max_gap_joined: "Max gap between joined pairs, default is 50"
    max_gap_rt: "Max gap between RT sub-domains, default is 2"
    min_found_rt: "Min sub-domains found in a RT domain, default is 4"
    threshold_join_new: "Threshold for join new sequence in existed alignment\\nnew alignment similarity higher than this will be joined,\\ndefault is 0.70"
    threshold_split_existed: "Threshold for split existed alignment to two part\\nnew alignment similarity lower than this will be split,\\nset this threshold lower than -j, means turn it off,\\ndefault is 0.90"
    output_score_limit: "output Score limit, default is 6.00, [0,10]"
    min_ltr_similarity: "min LTR similarity threshold, default is 0.00, [0,1]"
    boundary_alignment_sharpness_threshold_oneone: "Boundary alignment sharpness threshold, higher one.\\none of the two edge's sharpness must higher than\\nthis threshold, default is 0.400, [0,1]"
    boundary_alignment_sharpness_threshold_oneboth: "Boundary alignment sharpness threshold, lower one.\\nboth of the two edge's sharpness must higher than\\nthis threshold, default is 0.400, [0,1]"
    pbs_detecting_threshold: "PBS detecting threshold, min tRNA match length: 14, [1,18]"
    output_format_table: "output format: [0]-full, 1-summary, 2-table."
    output_alignment_lengthonly: "output alignment length(only affect -w0), default is 40"
    seqids_will_only: "SeqIDs, will only calculate matched SeqID\\nPOSIX style regular express is supported."
    trna_sequence_filefasta: "tRNA sequence file(FASTA format)"
    data_file_used: "data file used to draw figure"
    use_psscan_predict: "Use ps_scan to predict protein domain"
    output_html_format: "Output in html format"
    ltr_must_edge: "LTR must have edge signal\\n(at least two of PBS,PPT,TSR)"
    detect_centriole_delete: "detect Centriole, delete highly repeat regions"
    filter_choose_resultdefault: "Filter to choose desired result,default is 0\\n10000000000 5'-LTR must have TG\\n01000000000 5'-LTR must have CA\\n00100000000 3'-LTR must have TG\\n00010000000 3'-LTR must have CA\\n00001000000 TSR must be found\\n00000100000 PBS must be found\\n00000010000 PPT must be found\\n00000001000 RT domain muse be found\\n00000000100 Integrase core must be found\\n00000000010 Integrase c-term must be found\\n00000000001 RNase H must be found"
  }
  output {
    File out_stdout = stdout()
  }
}