version 1.0

task Seedtop {
  input {
    Boolean? database_default_nr
    Boolean? query_file_default
    Boolean? hit_file_default
    File? output_file_alignment
    Boolean? cost_open_default
    Boolean? cost_extend_default
    Boolean? cost_decline_align
    Boolean? x_dropoff_value
    Boolean? cutoff_cost_default
    Boolean? score_only_default
    Boolean? show_gis_f
    Boolean? expectation_valuee_default
    Boolean? believe_query_default
    File? seqalign_file_must
    Boolean? matrix_default_blosum
    Boolean? program_name_default
    Boolean? cost_match_default
    Boolean? cost_mismatch_default
    Boolean? filter_query_sequence
    Boolean? force_searching_patterns
    Boolean? internal_hit_buffer
  }
  command <<<
    seedtop \
      ~{if (database_default_nr) then "-d" else ""} \
      ~{if (query_file_default) then "-i" else ""} \
      ~{if (hit_file_default) then "-k" else ""} \
      ~{if (output_file_alignment) then "-o" else ""} \
      ~{if (cost_open_default) then "-G" else ""} \
      ~{if (cost_extend_default) then "-E" else ""} \
      ~{if (cost_decline_align) then "-D" else ""} \
      ~{if (x_dropoff_value) then "-X" else ""} \
      ~{if (cutoff_cost_default) then "-S" else ""} \
      ~{if (score_only_default) then "-C" else ""} \
      ~{if (show_gis_f) then "-I" else ""} \
      ~{if (expectation_valuee_default) then "-e" else ""} \
      ~{if (believe_query_default) then "-J" else ""} \
      ~{if (seqalign_file_must) then "-O" else ""} \
      ~{if (matrix_default_blosum) then "-M" else ""} \
      ~{if (program_name_default) then "-p" else ""} \
      ~{if (cost_match_default) then "-r" else ""} \
      ~{if (cost_mismatch_default) then "-q" else ""} \
      ~{if (filter_query_sequence) then "-F" else ""} \
      ~{if (force_searching_patterns) then "-f" else ""} \
      ~{if (internal_hit_buffer) then "-K" else ""}
  >>>
  parameter_meta {
    database_default_nr: "Database [String]\\ndefault = nr"
    query_file_default: "Query File [File In]\\ndefault = stdin"
    hit_file_default: "Hit File [File In]\\ndefault = hit_file"
    output_file_alignment: "Output File for Alignment [File Out]  Optional\\ndefault = stdout"
    cost_open_default: "Cost to open a gap [Integer]\\ndefault = 11"
    cost_extend_default: "Cost to extend a gap [Integer]\\ndefault = 1"
    cost_decline_align: "Cost decline to align [Integer]\\ndefault = 99999"
    x_dropoff_value: "X dropoff value for gapped alignment (in bits) [Integer]\\ndefault = 15"
    cutoff_cost_default: "Cutoff cost [Integer]\\ndefault = 30"
    score_only_default: "Score only or not [Integer]\\ndefault = 1"
    show_gis_f: "Show GI's in deflines [T/F]\\ndefault = F"
    expectation_valuee_default: "Expectation value(E) [Real]\\ndefault = 10.0"
    believe_query_default: "Believe the query defline [T/F]\\ndefault = F"
    seqalign_file_must: "SeqAlign file ('Believe the query defline' must be TRUE) [File Out]  Optional"
    matrix_default_blosum: "Matrix [String]\\ndefault = BLOSUM62"
    program_name_default: "Program Name [String]\\ndefault = patmatchp"
    cost_match_default: "Cost for a match [Integer]\\ndefault = 10"
    cost_mismatch_default: "Cost for a mismatch [Integer]\\ndefault = -10"
    filter_query_sequence: "Filter query sequence with SEG [T/F]\\ndefault = F"
    force_searching_patterns: "Force searching for patterns even if they are too likely [T/F]\\ndefault = F"
    internal_hit_buffer: "internal hit buffer size multiplier (default: 2 /query_length/ ) [Integer]\\ndefault = 2\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_alignment = "${in_output_file_alignment}"
    File out_seqalign_file_must = "${in_seqalign_file_must}"
  }
}