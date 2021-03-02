version 1.0

task Blastcl3 {
  input {
    Boolean? program_name
    Boolean? database_default_
    Boolean? query_file_default
    Boolean? expectation_value_e
    Boolean? alignment_view_options
    File? blast_report_file
    Boolean? filter_query_sequence
    Boolean? cost_open_gap
    Boolean? cost_extend_gap
    Boolean? x_dropoff_value_gapped
    Boolean? show_gis_deflines
    Boolean? penalty_nucleotide_mismatch
    Boolean? reward_nucleotide_match
    Boolean? number_database_sequences
    Boolean? number_database_sequence
    Boolean? threshold_extending_hits
    Boolean? perform_gapped_alignment
    Boolean? query_genetic_code
    Boolean? db_genetic_code
    Boolean? number_use_default
    File? seqalign_file_optional
    Boolean? believe_defline_default
    Boolean? matrix_default_blosum
    Boolean? word_size_default
    Boolean? effective_length_database
    Boolean? number_best_keep
    Boolean? multiple_hit_single
    Boolean? effective_length_search
    Boolean? query_strands_search
    Boolean? produce_html_output
    Boolean? restrict_search_database
    Boolean? use_case_filtering
    Boolean? x_dropoff_value_ungapped
    Boolean? x_dropoff_value_final
    Boolean? rps_blast_search
    Boolean? megablast_search_default
    Boolean? location_query_optional
    Boolean? multiple_hits_window
    Boolean? frame_shift_oof
    Boolean? length_invokes_behavior
    Boolean? use_compositionbased_adjustments
    Boolean? compute_smithwaterman_alignments
  }
  command <<<
    blastcl3 \
      ~{if (program_name) then "-p" else ""} \
      ~{if (database_default_) then "-d" else ""} \
      ~{if (query_file_default) then "-i" else ""} \
      ~{if (expectation_value_e) then "-e" else ""} \
      ~{if (alignment_view_options) then "-m" else ""} \
      ~{if (blast_report_file) then "-o" else ""} \
      ~{if (filter_query_sequence) then "-F" else ""} \
      ~{if (cost_open_gap) then "-G" else ""} \
      ~{if (cost_extend_gap) then "-E" else ""} \
      ~{if (x_dropoff_value_gapped) then "-X" else ""} \
      ~{if (show_gis_deflines) then "-I" else ""} \
      ~{if (penalty_nucleotide_mismatch) then "-q" else ""} \
      ~{if (reward_nucleotide_match) then "-r" else ""} \
      ~{if (number_database_sequences) then "-v" else ""} \
      ~{if (number_database_sequence) then "-b" else ""} \
      ~{if (threshold_extending_hits) then "-f" else ""} \
      ~{if (perform_gapped_alignment) then "-g" else ""} \
      ~{if (query_genetic_code) then "-Q" else ""} \
      ~{if (db_genetic_code) then "-D" else ""} \
      ~{if (number_use_default) then "-a" else ""} \
      ~{if (seqalign_file_optional) then "-O" else ""} \
      ~{if (believe_defline_default) then "-J" else ""} \
      ~{if (matrix_default_blosum) then "-M" else ""} \
      ~{if (word_size_default) then "-W" else ""} \
      ~{if (effective_length_database) then "-z" else ""} \
      ~{if (number_best_keep) then "-K" else ""} \
      ~{if (multiple_hit_single) then "-P" else ""} \
      ~{if (effective_length_search) then "-Y" else ""} \
      ~{if (query_strands_search) then "-S" else ""} \
      ~{if (produce_html_output) then "-T" else ""} \
      ~{if (restrict_search_database) then "-u" else ""} \
      ~{if (use_case_filtering) then "-U" else ""} \
      ~{if (x_dropoff_value_ungapped) then "-y" else ""} \
      ~{if (x_dropoff_value_final) then "-Z" else ""} \
      ~{if (rps_blast_search) then "-R" else ""} \
      ~{if (megablast_search_default) then "-n" else ""} \
      ~{if (location_query_optional) then "-L" else ""} \
      ~{if (multiple_hits_window) then "-A" else ""} \
      ~{if (frame_shift_oof) then "-w" else ""} \
      ~{if (length_invokes_behavior) then "-t" else ""} \
      ~{if (use_compositionbased_adjustments) then "-C" else ""} \
      ~{if (compute_smithwaterman_alignments) then "-s" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    program_name: "Program Name [String]"
    database_default_: "Database [String]\\ndefault = nr"
    query_file_default: "Query File [File In]\\ndefault = stdin"
    expectation_value_e: "Expectation value (E) [Real]\\ndefault = 10.0"
    alignment_view_options: "alignment view options:"
    blast_report_file: "BLAST report Output File [File Out]  Optional\\ndefault = stdout"
    filter_query_sequence: "Filter query sequence (DUST with blastn, SEG with others) [String]\\ndefault = T"
    cost_open_gap: "Cost to open a gap (-1 invokes default behavior) [Integer]\\ndefault = -1"
    cost_extend_gap: "Cost to extend a gap (-1 invokes default behavior) [Integer]\\ndefault = -1"
    x_dropoff_value_gapped: "X dropoff value for gapped alignment (in bits) (zero invokes default behavior)\\nblastn 30, megablast 20, tblastx 0, all others 15 [Integer]\\ndefault = 0"
    show_gis_deflines: "Show GI's in deflines [T/F]\\ndefault = F"
    penalty_nucleotide_mismatch: "Penalty for a nucleotide mismatch (blastn only) [Integer]\\ndefault = -3"
    reward_nucleotide_match: "Reward for a nucleotide match (blastn only) [Integer]\\ndefault = 1"
    number_database_sequences: "Number of database sequences to show one-line descriptions for (V) [Integer]\\ndefault = 500"
    number_database_sequence: "Number of database sequence to show alignments for (B) [Integer]\\ndefault = 250"
    threshold_extending_hits: "Threshold for extending hits, default if zero\\nblastp 11, blastn 0, blastx 12, tblastn 13\\ntblastx 13, megablast 0 [Real]\\ndefault = 0"
    perform_gapped_alignment: "Perform gapped alignment (not available with tblastx) [T/F]\\ndefault = T"
    query_genetic_code: "Query Genetic code to use [Integer]\\ndefault = 1"
    db_genetic_code: "DB Genetic code (for tblast[nx] only) [Integer]\\ndefault = 1"
    number_use_default: "Number of processors to use [Integer]\\ndefault = 1"
    seqalign_file_optional: "SeqAlign file [File Out]  Optional"
    believe_defline_default: "Believe the query defline [T/F]\\ndefault = F"
    matrix_default_blosum: "Matrix [String]\\ndefault = BLOSUM62"
    word_size_default: "Word size, default if zero (blastn 11, megablast 28, all others 3) [Integer]\\ndefault = 0"
    effective_length_database: "Effective length of the database (use zero for the real size) [Real]\\ndefault = 0"
    number_best_keep: "Number of best hits from a region to keep. Off by default."
    multiple_hit_single: "0 for multiple hit, 1 for single hit (does not apply to blastn) [Integer]\\ndefault = 0"
    effective_length_search: "Effective length of the search space (use zero for the real size) [Real]\\ndefault = 0"
    query_strands_search: "Query strands to search against database (for blast[nx], and tblastx)\\n3 is both, 1 is top, 2 is bottom [Integer]\\ndefault = 3"
    produce_html_output: "Produce HTML output [T/F]\\ndefault = F"
    restrict_search_database: "Restrict search of database to results of Entrez2 lookup [String]  Optional"
    use_case_filtering: "Use lower case filtering of FASTA sequence [T/F]  Optional"
    x_dropoff_value_ungapped: "X dropoff value for ungapped extensions in bits (0.0 invokes default behavior)\\nblastn 20, megablast 10, all others 7 [Real]\\ndefault = 0.0"
    x_dropoff_value_final: "X dropoff value for final gapped alignment in bits (0.0 invokes default behavior)\\nblastn/megablast 100, tblastx 0, all others 25 [Integer]\\ndefault = 0"
    rps_blast_search: "RPS Blast search [T/F]\\ndefault = F"
    megablast_search_default: "MegaBlast search [T/F]\\ndefault = F"
    location_query_optional: "Location on query sequence [String]  Optional"
    multiple_hits_window: "Multiple Hits window size, default if zero (blastn/megablast 0, all others 40 [Integer]\\ndefault = 0"
    frame_shift_oof: "Frame shift penalty (OOF algorithm for blastx) [Integer]\\ndefault = 0"
    length_invokes_behavior: "Length of the largest intron allowed in a translated nucleotide sequence when linking multiple distinct alignments. (0 invokes default behavior; a negative value disables linking.) [Integer]\\ndefault = 0"
    use_compositionbased_adjustments: "Use composition-based score adjustments for blastp or tblastn:\\nAs first character:\\nD or d: default (equivalent to T)\\n0 or F or f: no composition-based statistics\\n2 or T or t: Composition-based score adjustments as in Bioinformatics 21:902-911,\\n1: Composition-based statistics as in NAR 29:2994-3005, 2001\\n2005, conditioned on sequence properties\\n3: Composition-based score adjustment as in Bioinformatics 21:902-911,\\n2005, unconditionally\\nFor programs other than tblastn, must either be absent or be D, F or 0.\\nAs second character, if first character is equivalent to 1, 2, or 3:\\nU or u: unified p-value combining alignment p-value and compositional p-value in round 1 only"
    compute_smithwaterman_alignments: "Compute locally optimal Smith-Waterman alignments (This option is only\\navailable for gapped tblastn.) [T/F]\\ndefault = F\\n"
  }
  output {
    File out_stdout = stdout()
    File out_blast_report_file = "${in_blast_report_file}"
    File out_seqalign_file_optional = "${in_seqalign_file_optional}"
  }
}