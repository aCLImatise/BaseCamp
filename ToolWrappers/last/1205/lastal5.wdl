version 1.0

task Lastal5 {
  input {
    Boolean? be_verbose_write
    Boolean? output_format_tab
    Boolean? query_letters_e
    Boolean? maximum_expected_alignments
    Boolean? match_score_m
    Boolean? mismatch_cost_m
    Boolean? matchmismatch_score_matrix
    Boolean? nx_ambiguous_sequence
    Boolean? gap_existence_cost
    Boolean? gap_extension_cost
    Boolean? insertion_existence_cost
    Boolean? insertion_extension_cost
    Boolean? unaligned_residue_pair
    Boolean? _frameshift_costs
    Boolean? maximum_score_drop_preliminary
    Boolean? maximum_score_drop_gapless
    Boolean? maximum_score_drop_final
    Boolean? minimum_score_gapless
    Boolean? minimum_score_gapped
    Boolean? maximum_initial_matches
    Boolean? minimum_length_initial
    Boolean? maximum_length_initial
    Boolean? use_initial_matches
    Boolean? use_positions_sliding
    Boolean? strand_reverse_forward
    Boolean? score_matrix_applies
    Boolean? omit_alignments_lies
    Boolean? omit_gapless_alignments
    Boolean? number_parallel_threads
    Boolean? query_batch_size
    Boolean? find_minimumdifference_alignments
    Boolean? type_alignment_local
    Boolean? maximum_gapless_alignments
    Boolean? stop_first_n
    Boolean? lowercase_simplesequence_options
    Boolean? mask_lowercase_extensions
    Boolean? suppress_repeats_distance
    Boolean? _genetic_code
    Boolean? calculating_probabilities_lambda
    Boolean? parameter_gammacentroid_lama
    Boolean? output_type_match
    Boolean? input_format_fastx
    String last_db_name
    File fast_a_sequence_file
  }
  command <<<
    lastal5 \
      ~{last_db_name} \
      ~{fast_a_sequence_file} \
      ~{if (be_verbose_write) then "-v" else ""} \
      ~{if (output_format_tab) then "-f" else ""} \
      ~{if (query_letters_e) then "-D" else ""} \
      ~{if (maximum_expected_alignments) then "-E" else ""} \
      ~{if (match_score_m) then "-r" else ""} \
      ~{if (mismatch_cost_m) then "-q" else ""} \
      ~{if (matchmismatch_score_matrix) then "-p" else ""} \
      ~{if (nx_ambiguous_sequence) then "-X" else ""} \
      ~{if (gap_existence_cost) then "-a" else ""} \
      ~{if (gap_extension_cost) then "-b" else ""} \
      ~{if (insertion_existence_cost) then "-A" else ""} \
      ~{if (insertion_extension_cost) then "-B" else ""} \
      ~{if (unaligned_residue_pair) then "-c" else ""} \
      ~{if (_frameshift_costs) then "-F" else ""} \
      ~{if (maximum_score_drop_preliminary) then "-x" else ""} \
      ~{if (maximum_score_drop_gapless) then "-y" else ""} \
      ~{if (maximum_score_drop_final) then "-z" else ""} \
      ~{if (minimum_score_gapless) then "-d" else ""} \
      ~{if (minimum_score_gapped) then "-e" else ""} \
      ~{if (maximum_initial_matches) then "-m" else ""} \
      ~{if (minimum_length_initial) then "-l" else ""} \
      ~{if (maximum_length_initial) then "-L" else ""} \
      ~{if (use_initial_matches) then "-k" else ""} \
      ~{if (use_positions_sliding) then "-W" else ""} \
      ~{if (strand_reverse_forward) then "-s" else ""} \
      ~{if (score_matrix_applies) then "-S" else ""} \
      ~{if (omit_alignments_lies) then "-K" else ""} \
      ~{if (omit_gapless_alignments) then "-C" else ""} \
      ~{if (number_parallel_threads) then "-P" else ""} \
      ~{if (query_batch_size) then "-i" else ""} \
      ~{if (find_minimumdifference_alignments) then "-M" else ""} \
      ~{if (type_alignment_local) then "-T" else ""} \
      ~{if (maximum_gapless_alignments) then "-n" else ""} \
      ~{if (stop_first_n) then "-N" else ""} \
      ~{if (lowercase_simplesequence_options) then "-R" else ""} \
      ~{if (mask_lowercase_extensions) then "-u" else ""} \
      ~{if (suppress_repeats_distance) then "-w" else ""} \
      ~{if (_genetic_code) then "-G" else ""} \
      ~{if (calculating_probabilities_lambda) then "-t" else ""} \
      ~{if (parameter_gammacentroid_lama) then "-g" else ""} \
      ~{if (output_type_match) then "-j" else ""} \
      ~{if (input_format_fastx) then "-Q" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/last:1205--h8b12597_0"
  }
  parameter_meta {
    be_verbose_write: ": be verbose: write messages about what lastal is doing"
    output_format_tab: ": output format: TAB, MAF, BlastTab, BlastTab+ (default=MAF)"
    query_letters_e: ": query letters per random alignment (1e+06)"
    maximum_expected_alignments: ": maximum expected alignments per square giga (1e+18/D/refSize/numOfStrands)"
    match_score_m: ": match score   (2 if -M, else  6 if 1<=Q<=4, else 1 if DNA)"
    mismatch_cost_m: ": mismatch cost (3 if -M, else 18 if 1<=Q<=4, else 1 if DNA)"
    matchmismatch_score_matrix: ": match/mismatch score matrix (protein-protein: BL62, DNA-protein: BL80)"
    nx_ambiguous_sequence: ": N/X is ambiguous in: 0=neither sequence, 1=reference, 2=query, 3=both (0)"
    gap_existence_cost: ": gap existence cost (DNA: 7, protein: 11, 1<=Q<=4: 21)"
    gap_extension_cost: ": gap extension cost (DNA: 1, protein:  2, 1<=Q<=4:  9)"
    insertion_existence_cost: ": insertion existence cost (a)"
    insertion_extension_cost: ": insertion extension cost (b)"
    unaligned_residue_pair: ": unaligned residue pair cost (off)"
    _frameshift_costs: ": frameshift cost(s) (off)"
    maximum_score_drop_preliminary: ": maximum score drop for preliminary gapped alignments (z)"
    maximum_score_drop_gapless: ": maximum score drop for gapless alignments (min[t*10, x])"
    maximum_score_drop_final: ": maximum score drop for final gapped alignments (e-1)"
    minimum_score_gapless: ": minimum score for gapless alignments (min[e, 2500/n query letters per hit])"
    minimum_score_gapped: ": minimum score for gapped alignments"
    maximum_initial_matches: ": maximum initial matches per query position (10)"
    minimum_length_initial: ": minimum length for initial matches (1)"
    maximum_length_initial: ": maximum length for initial matches (infinity)"
    use_initial_matches: ": use initial matches starting at every k-th position in each query (1)"
    use_positions_sliding: ": use \\\"minimum\\\" positions in sliding windows of W consecutive positions"
    strand_reverse_forward: ": strand: 0=reverse, 1=forward, 2=both (2 for DNA, 1 for protein)"
    score_matrix_applies: ": score matrix applies to forward strand of: 0=reference, 1=query (0)"
    omit_alignments_lies: ": omit alignments whose query range lies in >= K others with > score (off)"
    omit_gapless_alignments: ": omit gapless alignments in >= C others with > score-per-length (off)"
    number_parallel_threads: ": number of parallel threads (1)"
    query_batch_size: ": query batch size (8 KiB, unless there is > 1 thread or lastdb volume)"
    find_minimumdifference_alignments: ": find minimum-difference alignments (faster but cruder)"
    type_alignment_local: ": type of alignment: 0=local, 1=overlap (0)"
    maximum_gapless_alignments: ": maximum gapless alignments per query position (infinity if m=0, else m)"
    stop_first_n: ": stop after the first N alignments per query strand"
    lowercase_simplesequence_options: ": lowercase & simple-sequence options (the same as was used by lastdb)"
    mask_lowercase_extensions: ": mask lowercase during extensions: 0=never, 1=gapless,\\n2=gapless+postmask, 3=always (2 if lastdb -c and Q!=pssm, else 0)"
    suppress_repeats_distance: ": suppress repeats inside exact matches, offset by <= this distance (1000)"
    _genetic_code: ": genetic code (1)"
    calculating_probabilities_lambda: ": 'temperature' for calculating probabilities (1/lambda)"
    parameter_gammacentroid_lama: ": 'gamma' parameter for gamma-centroid and LAMA (1)"
    output_type_match: ": output type: 0=match counts, 1=gapless, 2=redundant gapped, 3=gapped,\\n4=column ambiguity estimates, 5=gamma-centroid, 6=LAMA,\\n7=expected counts (3)"
    input_format_fastx: ": input format: fastx, keep, sanger, solexa, illumina, prb, pssm\\n(default=fasta)\\n"
    last_db_name: ""
    fast_a_sequence_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}