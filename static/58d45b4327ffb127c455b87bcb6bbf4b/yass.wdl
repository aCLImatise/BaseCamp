version 1.0

task Yass {
  input {
    Int? display_alignment_positions
    Int? process_forward_query
    String? output_file
    Boolean? mask_seed_algorithm
    Int? sort_according_information
    Boolean? display_current_version
    Int? select_scoring_default
    Int? reset_matchmismatchtransistionother_penalties
    Int? int_reset_gap
    String? real_reset_lambda
    Int? xdrop_threshold_score
    Int? evalue_threshold_default
    String? low_complexity_filter
    Int? limit_number_output
    Int? select_sequence_first
    Int? forbid_aligning_regions
    String? seed_patterns_use
    Int? seed_hit_criterion
    String? trim_overrepresented_codes
    Int? statistical_tolerance_default
    Int? indel_rate_default
    Int? mutation_rate_default
    Int? int_window_minmax
    String? window_size_coefficient
  }
  command <<<
    yass \
      ~{if defined(display_alignment_positions) then ("-d " +  '"' + display_alignment_positions + '"') else ""} \
      ~{if defined(process_forward_query) then ("-r " +  '"' + process_forward_query + '"') else ""} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""} \
      ~{true="-l" false="" mask_seed_algorithm} \
      ~{if defined(sort_according_information) then ("-s " +  '"' + sort_according_information + '"') else ""} \
      ~{true="-v" false="" display_current_version} \
      ~{if defined(select_scoring_default) then ("-M " +  '"' + select_scoring_default + '"') else ""} \
      ~{if defined(reset_matchmismatchtransistionother_penalties) then ("-C " +  '"' + reset_matchmismatchtransistionother_penalties + '"') else ""} \
      ~{if defined(int_reset_gap) then ("-G " +  '"' + int_reset_gap + '"') else ""} \
      ~{if defined(real_reset_lambda) then ("-L " +  '"' + real_reset_lambda + '"') else ""} \
      ~{if defined(xdrop_threshold_score) then ("-X " +  '"' + xdrop_threshold_score + '"') else ""} \
      ~{if defined(evalue_threshold_default) then ("-E " +  '"' + evalue_threshold_default + '"') else ""} \
      ~{if defined(low_complexity_filter) then ("-e " +  '"' + low_complexity_filter + '"') else ""} \
      ~{if defined(limit_number_output) then ("-O " +  '"' + limit_number_output + '"') else ""} \
      ~{if defined(select_sequence_first) then ("-S " +  '"' + select_sequence_first + '"') else ""} \
      ~{if defined(forbid_aligning_regions) then ("-T " +  '"' + forbid_aligning_regions + '"') else ""} \
      ~{if defined(seed_patterns_use) then ("-p " +  '"' + seed_patterns_use + '"') else ""} \
      ~{if defined(seed_hit_criterion) then ("-c " +  '"' + seed_hit_criterion + '"') else ""} \
      ~{if defined(trim_overrepresented_codes) then ("-t " +  '"' + trim_overrepresented_codes + '"') else ""} \
      ~{if defined(statistical_tolerance_default) then ("-a " +  '"' + statistical_tolerance_default + '"') else ""} \
      ~{if defined(indel_rate_default) then ("-i " +  '"' + indel_rate_default + '"') else ""} \
      ~{if defined(mutation_rate_default) then ("-m " +  '"' + mutation_rate_default + '"') else ""} \
      ~{if defined(int_window_minmax) then ("-W " +  '"' + int_window_minmax + '"') else ""} \
      ~{if defined(window_size_coefficient) then ("-w " +  '"' + window_size_coefficient + '"') else ""}
  >>>
  parameter_meta {
    display_alignment_positions: "0 : Display alignment positions (kept for compatibility) 1 : Display alignment positions + alignments + stats (default) 2 : Display blast-like tabular output 3 : Display light tabular output (better for post-processing) 4 : Display BED file output 5 : Display PSL file output"
    process_forward_query: "0 : process forward (query) strand 1 : process Reverse complement strand 2 : process both forward and Reverse complement strands (default)"
    output_file: "Output file"
    mask_seed_algorithm: "mask Lowercase regions (seed algorithm only)"
    sort_according_information: "Sort according to 0 : alignment scores 1 : entropy 2 : mutual information (experimental) 3 : both entropy and score 4 : positions on the 1st file 5 : positions on the 2nd file 6 : alignment % id 7 : 1st file sequence % id 8 : 2nd file sequence % id 10-18 : (0-8) + sort by first fasta chunks first 20-28 : (0-8) + sort by second fasta chunks first 30-38 : (0-8) + sort by both first/second chunks first 40-48 : (10-18) + sort chunk results with (0-8) criterion (first fasta file) 50-58 : (20-28) + sort chunk results with (0-8) criterion (second fasta file) 60-68 : (30-38) + sort chunk results with (0-8) criterion (first fasta file) 70-75 : (30-38) + sort chunk results with (0-8) criterion (second fasta file) 80-85 : (30-38) + sort chunk results with (0-8) criterion (both fasta files)"
    display_current_version: "display the current Version"
    select_scoring_default: "select a scoring Matrix (default 3): [Match,Transversion,Transition],(Gopen,Gext) 0 : [  1, -3, -2],( -8, -2)   1 : [  2, -3, -2],(-12, -4) 2 : [  3, -3, -2],(-16, -4)   3 : [  5, -4, -3],(-16, -4) 4 : [  5, -4, -2],(-16, -4)"
    reset_matchmismatchtransistionother_penalties: "[,<int>[,<int>[,<int>]]] reset match/mismatch/transistion/other Costs (penalties) you can also give the 16 values of matrix (ACGT order)"
    int_reset_gap: ",<int> reset Gap opening/extension penalties"
    real_reset_lambda: ",<real> reset Lambda and K parameters of Gumbel law"
    xdrop_threshold_score: "Xdrop threshold score (default 25)"
    evalue_threshold_default: "E-value threshold (default 10)"
    low_complexity_filter: "low complexity filter : minimal allowed Entropy of trinucleotide distribution ranging between 0 (no filter) and 6 (default 2.80)"
    limit_number_output: "limit number of Output alignments (default 1000000)"
    select_sequence_first: "Select sequence from the first multi-fasta file (default 0) * use 0 to select the full first multi-fasta file"
    forbid_aligning_regions: "forbid aligning too close regions (e.g. Tandem repeats) valid for single sequence comparison only (default 16 bp)"
    seed_patterns_use: "seed Pattern(s) * use '#' for match * use '@' for match or transition * use '-' or '_' for joker * use ',' for seed separator (max: 32 seeds) - example with one seed : yass file.fas -p  \"#@#--##--#-##@#\" - example with two complementary seeds : yass file.fas -p \"##-#-#@#-##@-##,##@#--@--##-#--###\" (default  \"###-#@-##@##,###--#-#--#-###\")"
    seed_hit_criterion: "seed hit Criterion : 1 or 2 seeds to consider a hit (default 2)"
    trim_overrepresented_codes: "Trim out over-represented seeds codes ranging between 0.0 (no trim) and +inf (default 0.001)"
    statistical_tolerance_default: "statistical tolerance Alpha (%) (default 5%)"
    indel_rate_default: "Indel rate (%)                  (default 8%)"
    mutation_rate_default: "Mutation rate (%)               (default 25%)"
    int_window_minmax: ",<int> Window <min,max> range for post-processing and grouping alignments (default <64,65536>)"
    window_size_coefficient: "Window size coefficient for post-processing and grouping alignments (default 16) NOTE : -w 0 disables post-processing"
  }
}