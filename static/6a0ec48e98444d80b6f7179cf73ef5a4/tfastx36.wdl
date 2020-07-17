version 1.0

task Tfastx36 {
  input {
    Boolean? compare_forward_strand
    Boolean? high_scores_reported
    Boolean? expected_fraction_joining
    Boolean? length_querysbjct_name
    Boolean? number_alignments_shown
    Boolean? enable_debugging_output
    Boolean? expandscript_extend_hits
    Boolean? _evalueerepeat_threshold
    Boolean? _gapopen_penalty
    Boolean? min_evalue_displayed
    Boolean? _gapextension_penalty
    Boolean? show_histogram
    Boolean? search_with_reversecomplement
    Boolean? interactive_mode
    Boolean? _frameshift_penalty
    Boolean? _number_shuffles
    Boolean? fastlibs_abbreviation_file
    Boolean? long_library_descriptions
    Boolean? outputalignment_format_map
    Boolean? filter_library_sequence
    Boolean? dnarna_query
    Boolean? max_library_length
    Boolean? offset_coordinates_querysubject
    Boolean? write_results_file
    Boolean? protein_query
    Boolean? var_25
    Boolean? var_26
    Boolean? _matchmismatch_dnarna
    Boolean? raw_score_file
    Boolean? scoring_matrix_protein
    Boolean? filter_lowercase_seg
    Boolean? translation_genetic_code
    Boolean? _max_threadsworkers
    Boolean? rna_query
    Boolean? shuffle_window_size
    Boolean? annotation_characters_querylibrary
    Boolean? width_alignment_display
    Boolean? _extended_options
    Boolean? statistics_estimation_method
    Boolean? database_size_evalue
  }
  command <<<
    tfastx36 \
      ~{true="-3" false="" compare_forward_strand} \
      ~{true="-b" false="" high_scores_reported} \
      ~{true="-c" false="" expected_fraction_joining} \
      ~{true="-C" false="" length_querysbjct_name} \
      ~{true="-d" false="" number_alignments_shown} \
      ~{true="-D" false="" enable_debugging_output} \
      ~{true="-e" false="" expandscript_extend_hits} \
      ~{true="-E" false="" _evalueerepeat_threshold} \
      ~{true="-f" false="" _gapopen_penalty} \
      ~{true="-F" false="" min_evalue_displayed} \
      ~{true="-g" false="" _gapextension_penalty} \
      ~{true="-H" false="" show_histogram} \
      ~{true="-i" false="" search_with_reversecomplement} \
      ~{true="-I" false="" interactive_mode} \
      ~{true="-j" false="" _frameshift_penalty} \
      ~{true="-k" false="" _number_shuffles} \
      ~{true="-l" false="" fastlibs_abbreviation_file} \
      ~{true="-L" false="" long_library_descriptions} \
      ~{true="-m" false="" outputalignment_format_map} \
      ~{true="-M" false="" filter_library_sequence} \
      ~{true="-n" false="" dnarna_query} \
      ~{true="-N" false="" max_library_length} \
      ~{true="-o" false="" offset_coordinates_querysubject} \
      ~{true="-O" false="" write_results_file} \
      ~{true="-p" false="" protein_query} \
      ~{true="-q" false="" var_25} \
      ~{true="-Q" false="" var_26} \
      ~{true="-r" false="" _matchmismatch_dnarna} \
      ~{true="-R" false="" raw_score_file} \
      ~{true="-s" false="" scoring_matrix_protein} \
      ~{true="-S" false="" filter_lowercase_seg} \
      ~{true="-t" false="" translation_genetic_code} \
      ~{true="-T" false="" _max_threadsworkers} \
      ~{true="-U" false="" rna_query} \
      ~{true="-v" false="" shuffle_window_size} \
      ~{true="-V" false="" annotation_characters_querylibrary} \
      ~{true="-w" false="" width_alignment_display} \
      ~{true="-X" false="" _extended_options} \
      ~{true="-z" false="" statistics_estimation_method} \
      ~{true="-Z" false="" database_size_evalue}
  >>>
  parameter_meta {
    compare_forward_strand: "compare forward strand only"
    high_scores_reported: ":  high scores reported (limited by -E by default); =<int> forces <int> results;"
    expected_fraction_joining: ":  expected fraction for band-optimization, joining"
    length_querysbjct_name: ":  length of the query/sbjct name in alignments"
    number_alignments_shown: ":  number of alignments shown (limited by -E by default)"
    enable_debugging_output: "enable debugging output"
    expandscript_extend_hits: ":  expand_script to extend hits"
    _evalueerepeat_threshold: ":  E()-value,E()-repeat threshold"
    _gapopen_penalty: ":  gap-open penalty"
    min_evalue_displayed: ":  min E()-value displayed"
    _gapextension_penalty: ":  gap-extension penalty"
    show_histogram: "show histogram"
    search_with_reversecomplement: "search with reverse-complement"
    interactive_mode: "interactive mode"
    _frameshift_penalty: ":  frame-shift penalty"
    _number_shuffles: ":  number of shuffles"
    fastlibs_abbreviation_file: ":  FASTLIBS abbreviation file"
    long_library_descriptions: "long library descriptions"
    outputalignment_format_map: ":  Output/alignment format; 0 - standard \":. \" alignment; 1 - \" xX\"; 2 - \".MS..\"; 3 - separate >fasta entries; 4 - \"---\" alignment map; 5 - 0+4; 6 - <html>; 8 - BLAST tabular; 8C commented BLAST tabular; 8CC BLAST tab CIGAR, 8CD BLAST tab CIGAR ext; 8CB BLAST tab BTOP B - BLAST Query/Sbjct alignments; BB - complete BLAST output; 9 - FASTA tabular; 9c - FASTA tabular encoded; 9C FASTA tabular CIGAR encoded; 9B FASTA tabular BTOP encoded 10 - parseable key:value; 11 - lav for LALIGN; A - aligned residue score F - 'F0,6,9c out_file' - alternate output formats to files;"
    filter_library_sequence: ":  filter on library sequence length"
    dnarna_query: "DNA/RNA query"
    max_library_length: ":  max library length before overlapping"
    offset_coordinates_querysubject: ":  offset coordinates of query/subject"
    write_results_file: ":  write results to file"
    protein_query: "protein query"
    var_25: "quiet [default] -- do not prompt"
    var_26: "quiet [default] -- do not prompt"
    _matchmismatch_dnarna: ":  [+0/0]  +match/-mismatch for DNA/RNA"
    raw_score_file: ":  raw score file"
    scoring_matrix_protein: ":  Scoring matrix: (protein) BL50, BP62 (sets -f -11 -g -1); P250, OPT5, VT200, VT160, P120, VT120, BL80, VT80, MD40, VT40, MD20, VT20, MD10, VT10; scoring matrix file name; -s ?BL50 adjusts matrix for short queries;"
    filter_lowercase_seg: "filter lowercase (seg) residues"
    translation_genetic_code: ":  translation genetic code"
    _max_threadsworkers: ":  max threads/workers"
    rna_query: "RNA query"
    shuffle_window_size: ":  shuffle window size"
    annotation_characters_querylibrary: ":  annotation characters in query/library for aligments"
    width_alignment_display: ":  width of alignment display"
    _extended_options: ":  Extended options"
    statistics_estimation_method: ":  Statistics estimation method: 1 - regression; -1 - no stats.; 0 - no scaling; 2 - Maximum Likelihood Est.; 3 - Altschul/Gish; 4 - iter. regress.; 5 - regress w/variance; 6 - MLE with comp. adj.; 11 - 16 - estimates from shuffled library sequences; 21 - 26 - E2()-stats from shuffled high-scoring sequences;"
    database_size_evalue: ":  [library entries] database size for E()-value"
  }
}