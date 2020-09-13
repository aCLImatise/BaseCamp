version 1.0

task Dialigntx {
  input {
    Boolean? debugmode_debug_statements
    Boolean? maximum_amount_input
    Boolean? maximum_number_characters
    Boolean? maximum_amount_printing
    Boolean? sensitivity_mode_level
    Boolean? score_matrix_file
    Boolean? defines_minimum_weight
    Boolean? probability_distribution_file
    Boolean? add_prevent_values
    Boolean? threshold_low_score
    Boolean? maximum_number_consecutive
    Boolean? global_minimum_fragment
    Boolean? wether_overlap_weights
    Boolean? minimum_fragment_length
    Boolean? threshold_weight_consider
    Boolean? only_use_stripe
    Boolean? optional_anchor_file
    Boolean? input_is_dnasequence
    Boolean? translate_dna_aminoacids_begin
    Boolean? compare_only_longest
    Boolean? translate_dna_aminoacids_reading
    Boolean? output_aminoacids_retranslation
    Boolean? fast_mode_implies
    Boolean? generate_probability_table
    String? this_message
    String di_align_t
    Directory conf_directory
    File fast_a_file
    File? fast_a_out_file
  }
  command <<<
    dialign_tx \
      ~{di_align_t} \
      ~{conf_directory} \
      ~{fast_a_file} \
      ~{fast_a_out_file} \
      ~{if (debugmode_debug_statements) then "-d" else ""} \
      ~{if (maximum_amount_input) then "-s" else ""} \
      ~{if (maximum_number_characters) then "-a" else ""} \
      ~{if (maximum_amount_printing) then "-c" else ""} \
      ~{if (sensitivity_mode_level) then "-l" else ""} \
      ~{if (score_matrix_file) then "-m" else ""} \
      ~{if (defines_minimum_weight) then "-w" else ""} \
      ~{if (probability_distribution_file) then "-p" else ""} \
      ~{if (add_prevent_values) then "-v" else ""} \
      ~{if (threshold_low_score) then "-t" else ""} \
      ~{if (maximum_number_consecutive) then "-n" else ""} \
      ~{if (global_minimum_fragment) then "-g" else ""} \
      ~{if (wether_overlap_weights) then "-o" else ""} \
      ~{if (minimum_fragment_length) then "-f" else ""} \
      ~{if (threshold_weight_consider) then "-r" else ""} \
      ~{if (only_use_stripe) then "-u" else ""} \
      ~{if (optional_anchor_file) then "-A" else ""} \
      ~{if (input_is_dnasequence) then "-D" else ""} \
      ~{if (translate_dna_aminoacids_begin) then "-T" else ""} \
      ~{if (compare_only_longest) then "-L" else ""} \
      ~{if (translate_dna_aminoacids_reading) then "-O" else ""} \
      ~{if (output_aminoacids_retranslation) then "-P" else ""} \
      ~{if (fast_mode_implies) then "-F" else ""} \
      ~{if (generate_probability_table) then "-C" else ""} \
      ~{if defined(this_message) then ("-H " +  '"' + this_message + '"') else ""}
  >>>
  parameter_meta {
    debugmode_debug_statements: "Debug-Mode  [DEFAULT 0]\\n0 no debug statements\\n1 debugs the current phase of the processing\\n2 very loquacious debugging\\n5 hardcore debugging"
    maximum_amount_input: "maximum amount of input sequences [DEFAULT 5000]"
    maximum_number_characters: "maximum number of characters per line in a FASTA file [DEFAULT 100]"
    maximum_amount_printing: "maximum amount of characters per line when printing a sequence\\n[DEFAULT 80]"
    sensitivity_mode_level: "sensitivity mode, the higher the level the less likely\\nspurious random fragments are aligned in local alignments\\n[DEFAULT 0]\\n0 switched off\\n1 level-1, reduced sensitivity\\n2 level-2, strongly reduced sensitivity"
    score_matrix_file: "score matrix file name (in the configuration directory)\\n[DEFAULT PROTEIN: BLOSUM.scr]\\n[DEFAULT DNA: dna_matrix.scr]"
    defines_minimum_weight: "defines the minimum weight when the weight formula is changed\\nto 1-pow(1-prob, factor) [DEFAULT 0.000000065]"
    probability_distribution_file: "probability distribution file name (in the configuration\\ndirectory)\\n[DEFAULT PROTEIN: BLOSUM.diag_prob_t10]\\n[DEFAULT DNA: dna_diag_prob_100_exp_550000]"
    add_prevent_values: "add to each score (to prevent negative values) [DEFAULT 0]"
    threshold_low_score: "\\\"even\\\" threshold for low score for sequences alignment\\n[DEFAULT PROTEIN: 4]\\n[DEFAULT DNA: 0]"
    maximum_number_consecutive: "maximum number of consecutive positions for window containing\\nlow scoring positions\\n[DEFAULT PROTEIN: 4]\\n[DEFAULT DNA: 4]"
    global_minimum_fragment: "global minimum fragment length for stop criterion\\n[DEFAULT PROTEIN: 40]\\n[DEFAULT DNA: 40]"
    wether_overlap_weights: "wether overlap weights are calculated or not [DEFAULT 0]"
    minimum_fragment_length: "minimum fragment length [DEFAULT 1]"
    threshold_weight_consider: "threshold weight to consider the fragment at all [DEFAULT 0.0]"
    only_use_stripe: "[DEFAULT 0]\\n1: only use a sqrt(amount_of_seqs) stripe of neighbour\\nsequences to calculate pairwise alignments (increase performance)\\n0: all pairwise alignments will be calculated"
    optional_anchor_file: "optional anchor file [DEFAULT none]"
    input_is_dnasequence: "input is DNA-sequence"
    translate_dna_aminoacids_begin: "translate DNA into aminoacids from begin to end (length will be cut to mod 3 = 0)\\nWARNING: Do not use -D with this option\\n(Default values for PROTEIN input will be loaded)"
    compare_only_longest: "compare only longest Open Reading Frame\\nWARNING: Do not use -D with this option\\n(Default values for PROTEIN input will be loaded)"
    translate_dna_aminoacids_reading: "translate DNA to aminoacids, reading frame for each sequence calculated due to its longest ORF\\nWARNING: Do not use -D with this option\\n(Default values for PROTEIN input will be loaded)"
    output_aminoacids_retranslation: "output in aminoacids, no retranslation of DNA sequences\\n[DEFAULT: input = output]"
    fast_mode_implies: "fast mode (implies -l0, since it already significantly reduces sensitivity)"
    generate_probability_table: "generate probability table saved in <config_dir>/prob_table and exit"
    this_message: "this message"
    di_align_t: ""
    conf_directory: ""
    fast_a_file: ""
    fast_a_out_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_fast_a_out_file = "${in_fast_a_out_file}"
  }
}