version 1.0

task Fasty36 {
  input {
    Boolean? compare_forward_strand
    Boolean? high_scores_reported
    Boolean? expected_fraction_bandoptimization
    Boolean? length_querysbjct_name
    Boolean? number_alignments_limited
    Boolean? enable_debugging_output
    Boolean? expandscript_extend_hits
    Boolean? _evalueerepeat_threshold
    Boolean? _gapopen_penalty
    Boolean? min_evalue_displayed
    Boolean? _gapextension_penalty
    Boolean? show_histogram
    Boolean? search_with_reversecomplement
    Boolean? interactive_mode
    Boolean? frameshift_codon_substitution
    Boolean? _number_shuffles
    Boolean? fastlibs_abbreviation_file
    Boolean? long_library_descriptions
    Boolean? outputalignment_format_entries
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
    Boolean? scoring_bp_sets
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
    fasty36 \
      ~{if (compare_forward_strand) then "-3" else ""} \
      ~{if (high_scores_reported) then "-b" else ""} \
      ~{if (expected_fraction_bandoptimization) then "-c" else ""} \
      ~{if (length_querysbjct_name) then "-C" else ""} \
      ~{if (number_alignments_limited) then "-d" else ""} \
      ~{if (enable_debugging_output) then "-D" else ""} \
      ~{if (expandscript_extend_hits) then "-e" else ""} \
      ~{if (_evalueerepeat_threshold) then "-E" else ""} \
      ~{if (_gapopen_penalty) then "-f" else ""} \
      ~{if (min_evalue_displayed) then "-F" else ""} \
      ~{if (_gapextension_penalty) then "-g" else ""} \
      ~{if (show_histogram) then "-H" else ""} \
      ~{if (search_with_reversecomplement) then "-i" else ""} \
      ~{if (interactive_mode) then "-I" else ""} \
      ~{if (frameshift_codon_substitution) then "-j" else ""} \
      ~{if (_number_shuffles) then "-k" else ""} \
      ~{if (fastlibs_abbreviation_file) then "-l" else ""} \
      ~{if (long_library_descriptions) then "-L" else ""} \
      ~{if (outputalignment_format_entries) then "-m" else ""} \
      ~{if (filter_library_sequence) then "-M" else ""} \
      ~{if (dnarna_query) then "-n" else ""} \
      ~{if (max_library_length) then "-N" else ""} \
      ~{if (offset_coordinates_querysubject) then "-o" else ""} \
      ~{if (write_results_file) then "-O" else ""} \
      ~{if (protein_query) then "-p" else ""} \
      ~{if (var_25) then "-q" else ""} \
      ~{if (var_26) then "-Q" else ""} \
      ~{if (_matchmismatch_dnarna) then "-r" else ""} \
      ~{if (raw_score_file) then "-R" else ""} \
      ~{if (scoring_bp_sets) then "-s" else ""} \
      ~{if (filter_lowercase_seg) then "-S" else ""} \
      ~{if (translation_genetic_code) then "-t" else ""} \
      ~{if (_max_threadsworkers) then "-T" else ""} \
      ~{if (rna_query) then "-U" else ""} \
      ~{if (shuffle_window_size) then "-v" else ""} \
      ~{if (annotation_characters_querylibrary) then "-V" else ""} \
      ~{if (width_alignment_display) then "-w" else ""} \
      ~{if (_extended_options) then "-X" else ""} \
      ~{if (statistics_estimation_method) then "-z" else ""} \
      ~{if (database_size_evalue) then "-Z" else ""}
  >>>
  parameter_meta {
    compare_forward_strand: "compare forward strand only"
    high_scores_reported: ":  high scores reported (limited by -E by default);\\n=<int> forces <int> results;"
    expected_fraction_bandoptimization: ":  expected fraction for band-optimization, joining"
    length_querysbjct_name: ":  length of the query/sbjct name in alignments"
    number_alignments_limited: ":  number of alignments shown (limited by -E by default)"
    enable_debugging_output: "enable debugging output"
    expandscript_extend_hits: ":  expand_script to extend hits"
    _evalueerepeat_threshold: ":  E()-value,E()-repeat threshold"
    _gapopen_penalty: ":  gap-open penalty"
    min_evalue_displayed: ":  min E()-value displayed"
    _gapextension_penalty: ":  gap-extension penalty"
    show_histogram: "show histogram"
    search_with_reversecomplement: "search with reverse-complement"
    interactive_mode: "interactive mode"
    frameshift_codon_substitution: ":  frame-shift, codon substitution penalty"
    _number_shuffles: ":  number of shuffles"
    fastlibs_abbreviation_file: ":  FASTLIBS abbreviation file"
    long_library_descriptions: "long library descriptions"
    outputalignment_format_entries: ":  Output/alignment format;\\n0 - standard \\\":. \\\" alignment; 1 - \\\" xX\\\"; 2 - \\\".MS..\\\"; 3 - separate >fasta entries;\\n4 - \\\"---\\\" alignment map; 5 - 0+4; 6 - <html>;\\n8 - BLAST tabular; 8C commented BLAST tabular; 8CC BLAST tab CIGAR, 8CD BLAST tab CIGAR ext; 8CB BLAST tab BTOP\\nB - BLAST Query/Sbjct alignments; BB - complete BLAST output;\\n9 - FASTA tabular; 9c - FASTA tabular encoded; 9C FASTA tabular CIGAR encoded; 9B FASTA tabular BTOP encoded\\n10 - parseable key:value; 11 - lav for LALIGN;\\nA - aligned residue score\\nF - 'F0,6,9c out_file' - alternate output formats to files;"
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
    scoring_bp_sets: ":  Scoring matrix: (protein)\\nBL50, BP62 (sets -f -11 -g -1); P250, OPT5, VT200,\\nVT160, P120, VT120, BL80, VT80, MD40, VT40, MD20, VT20, MD10, VT10;\\nscoring matrix file name; -s ?BL50 adjusts matrix for short queries;"
    filter_lowercase_seg: "filter lowercase (seg) residues"
    translation_genetic_code: ":  translation genetic code"
    _max_threadsworkers: ":  max threads/workers"
    rna_query: "RNA query"
    shuffle_window_size: ":  shuffle window size"
    annotation_characters_querylibrary: ":  annotation characters in query/library for aligments"
    width_alignment_display: ":  width of alignment display"
    _extended_options: ":  Extended options"
    statistics_estimation_method: ":  Statistics estimation method:\\n1 - regression; -1 - no stats.; 0 - no scaling; 2 - Maximum Likelihood Est.;\\n3 - Altschul/Gish; 4 - iter. regress.; 5 - regress w/variance;\\n6 - MLE with comp. adj.;\\n11 - 16 - estimates from shuffled library sequences;\\n21 - 26 - E2()-stats from shuffled high-scoring sequences;"
    database_size_evalue: ":  [library entries] database size for E()-value"
  }
  output {
    File out_stdout = stdout()
  }
}