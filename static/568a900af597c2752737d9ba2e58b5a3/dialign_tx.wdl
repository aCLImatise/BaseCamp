version 1.0

task DialignTx {
  input {
    Boolean? debugmode_debug_statements
    Boolean? maximum_amount_input
    Boolean? maximum_number_characters
    Boolean? maximum_amount_printing
    Boolean? sensitivity_mode_higher
    Boolean? score_matrix_file
    Boolean? defines_minimum_weight
    Boolean? probability_distribution_file
    Boolean? add_prevent_values
    Boolean? threshold_low_score
    Boolean? maximum_number_consecutive
    Boolean? global_minimum_fragment
    Boolean? overlap_weights_calculated
    Boolean? minimum_fragment_length
    Boolean? threshold_weight_consider
    Boolean? only_use_stripe
    Boolean? optional_anchor_file
    Boolean? input_is_dnasequence
    Boolean? translate_dna_aminoacids_begin
    Boolean? compare_only_warning
    Boolean? translate_dna_aminoacids_reading
    Boolean? output_aminoacids_retranslation
    Boolean? fast_mode_implies
    Boolean? generate_probability_table
    String? this_message
    String di_align_t
    String conf_directory
    String fast_a_file
    String? fast_a_out_file
  }
  command <<<
    dialign-tx \
      ~{di_align_t} \
      ~{conf_directory} \
      ~{fast_a_file} \
      ~{fast_a_out_file} \
      ~{true="-d" false="" debugmode_debug_statements} \
      ~{true="-s" false="" maximum_amount_input} \
      ~{true="-a" false="" maximum_number_characters} \
      ~{true="-c" false="" maximum_amount_printing} \
      ~{true="-l" false="" sensitivity_mode_higher} \
      ~{true="-m" false="" score_matrix_file} \
      ~{true="-w" false="" defines_minimum_weight} \
      ~{true="-p" false="" probability_distribution_file} \
      ~{true="-v" false="" add_prevent_values} \
      ~{true="-t" false="" threshold_low_score} \
      ~{true="-n" false="" maximum_number_consecutive} \
      ~{true="-g" false="" global_minimum_fragment} \
      ~{true="-o" false="" overlap_weights_calculated} \
      ~{true="-f" false="" minimum_fragment_length} \
      ~{true="-r" false="" threshold_weight_consider} \
      ~{true="-u" false="" only_use_stripe} \
      ~{true="-A" false="" optional_anchor_file} \
      ~{true="-D" false="" input_is_dnasequence} \
      ~{true="-T" false="" translate_dna_aminoacids_begin} \
      ~{true="-L" false="" compare_only_warning} \
      ~{true="-O" false="" translate_dna_aminoacids_reading} \
      ~{true="-P" false="" output_aminoacids_retranslation} \
      ~{true="-F" false="" fast_mode_implies} \
      ~{true="-C" false="" generate_probability_table} \
      ~{if defined(this_message) then ("-H " +  '"' + this_message + '"') else ""}
  >>>
  parameter_meta {
    debugmode_debug_statements: "Debug-Mode  [DEFAULT 0] 0 no debug statements 1 debugs the current phase of the processing 2 very loquacious debugging 5 hardcore debugging"
    maximum_amount_input: "maximum amount of input sequences [DEFAULT 5000]"
    maximum_number_characters: "maximum number of characters per line in a FASTA file [DEFAULT 100]"
    maximum_amount_printing: "maximum amount of characters per line when printing a sequence [DEFAULT 80]"
    sensitivity_mode_higher: "sensitivity mode, the higher the level the less likely spurious random fragments are aligned in local alignments  [DEFAULT 0] 0 switched off  1 level-1, reduced sensitivity 2 level-2, strongly reduced sensitivity"
    score_matrix_file: "score matrix file name (in the configuration directory) [DEFAULT PROTEIN: BLOSUM.scr] [DEFAULT DNA: dna_matrix.scr]"
    defines_minimum_weight: "defines the minimum weight when the weight formula is changed to 1-pow(1-prob, factor) [DEFAULT 0.000000065]"
    probability_distribution_file: "probability distribution file name (in the configuration directory)  [DEFAULT PROTEIN: BLOSUM.diag_prob_t10] [DEFAULT DNA: dna_diag_prob_100_exp_550000]"
    add_prevent_values: "add to each score (to prevent negative values) [DEFAULT 0]"
    threshold_low_score: "\"even\" threshold for low score for sequences alignment  [DEFAULT PROTEIN: 4] [DEFAULT DNA: 0]"
    maximum_number_consecutive: "maximum number of consecutive positions for window containing low scoring positions  [DEFAULT PROTEIN: 4] [DEFAULT DNA: 4]"
    global_minimum_fragment: "global minimum fragment length for stop criterion  [DEFAULT PROTEIN: 40]  [DEFAULT DNA: 40]"
    overlap_weights_calculated: "wether overlap weights are calculated or not [DEFAULT 0]"
    minimum_fragment_length: "minimum fragment length [DEFAULT 1]"
    threshold_weight_consider: "threshold weight to consider the fragment at all [DEFAULT 0.0]"
    only_use_stripe: "[DEFAULT 0] 1: only use a sqrt(amount_of_seqs) stripe of neighbour sequences to calculate pairwise alignments (increase performance) 0: all pairwise alignments will be calculated"
    optional_anchor_file: "optional anchor file [DEFAULT none]"
    input_is_dnasequence: "input is DNA-sequence"
    translate_dna_aminoacids_begin: "translate DNA into aminoacids from begin to end (length will be cut to mod 3 = 0) WARNING: Do not use -D with this option  (Default values for PROTEIN input will be loaded)"
    compare_only_warning: "compare only longest Open Reading Frame WARNING: Do not use -D with this option  (Default values for PROTEIN input will be loaded)"
    translate_dna_aminoacids_reading: "translate DNA to aminoacids, reading frame for each sequence calculated due to its longest ORF WARNING: Do not use -D with this option  (Default values for PROTEIN input will be loaded)"
    output_aminoacids_retranslation: "output in aminoacids, no retranslation of DNA sequences [DEFAULT: input = output]"
    fast_mode_implies: "fast mode (implies -l0, since it already significantly reduces sensitivity)"
    generate_probability_table: "generate probability table saved in <config_dir>/prob_table and exit"
    this_message: "this message"
    di_align_t: ""
    conf_directory: ""
    fast_a_file: ""
    fast_a_out_file: ""
  }
}