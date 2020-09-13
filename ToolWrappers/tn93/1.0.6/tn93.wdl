version 1.0

task Tn93 {
  input {
    File? direct_output_file
    Float? only_report_count
    String? handle_ambigous_nucleotides
    String? combination_ambigs_limit
    Int? controls_format_set
    Int? only_process_pairs
    Int? sequence_name_form
    File? specified_read_file
    Boolean? bootstrap_alignment_columns
    Boolean? b_specified_supplied
    Boolean? only_count_pairs
    Boolean? compute_inter_
    Float? subsample_sequences_value
    Boolean? report_distances_sequence
    Boolean? report_progress_updates
    Boolean? v
  }
  command <<<
    tn93 \
      ~{if defined(direct_output_file) then ("-o " +  '"' + direct_output_file + '"') else ""} \
      ~{if defined(only_report_count) then ("-t " +  '"' + only_report_count + '"') else ""} \
      ~{if defined(handle_ambigous_nucleotides) then ("-a " +  '"' + handle_ambigous_nucleotides + '"') else ""} \
      ~{if defined(combination_ambigs_limit) then ("-g " +  '"' + combination_ambigs_limit + '"') else ""} \
      ~{if defined(controls_format_set) then ("-f " +  '"' + controls_format_set + '"') else ""} \
      ~{if defined(only_process_pairs) then ("-l " +  '"' + only_process_pairs + '"') else ""} \
      ~{if defined(sequence_name_form) then ("-d " +  '"' + sequence_name_form + '"') else ""} \
      ~{if defined(specified_read_file) then ("-s " +  '"' + specified_read_file + '"') else ""} \
      ~{if (bootstrap_alignment_columns) then "-b" else ""} \
      ~{if (b_specified_supplied) then "-r" else ""} \
      ~{if (only_count_pairs) then "-c" else ""} \
      ~{if (compute_inter_) then "-m" else ""} \
      ~{if defined(subsample_sequences_value) then ("-u " +  '"' + subsample_sequences_value + '"') else ""} \
      ~{if (report_distances_sequence) then "-0" else ""} \
      ~{if (report_progress_updates) then "-q" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    direct_output_file: "direct the output to a file named OUTPUT (default=stdout)"
    only_report_count: "only report (count) distances below this threshold (>=0, default=0.015)"
    handle_ambigous_nucleotides: "handle ambigous nucleotides using one of the following strategies (default=resolve)\\nresolve: resolve ambiguities to minimize distance (e.g.R matches A);\\naverage: average ambiguities (e.g.R-A is 0.5 A-A and 0.5 G-A);\\nskip: do not include sites with ambiguous nucleotides in distance calculations;\\ngapmm: a gap ('-') matched to anything other than another gap is like matching an N (4-fold ambig) to it;\\na string (e.g. RY): any ambiguity in the list is RESOLVED; any ambiguitiy NOT in the list is averaged (LIST-NOT LIST will also be averaged);"
    combination_ambigs_limit: "in combination with AMBIGS, works to limit (for resolve and string options to AMBIG)\\nthe maximum tolerated FRACTION of ambiguous characters; sequences whose pairwise comparisons\\ninclude no more than FRACTION [0,1] of sites with resolvable ambiguities will be resolved\\nwhile all others will be AVERAGED (default = 1.0)"
    controls_format_set: "controls the format of the output unless -c is set (default=csv)\\ncsv: seqname1, seqname2, distance;\\ncsvn: 1, 2, distance;\\nhyphy: {{d11,d12,..,d1n}...{dn1,dn2,...,dnn}}, where distances above THRESHOLD are set to 100;"
    only_process_pairs: "only process pairs of sequences that overlap over at least OVERLAP nucleotides (an integer >0, default=100):"
    sequence_name_form: "if sequence name is of the form 'somethingCOUNTS_IN_NAMEinteger' then treat the integer as a copy number\\nwhen computing distance histograms (a character, default=':'):"
    specified_read_file: "if specified, read another FASTA file from SECOND_FASTA and perform pairwise comparison BETWEEN the files (default=NULL)"
    bootstrap_alignment_columns: "bootstrap alignment columns before computing distances (default = false)\\nwhen -s is supplied, permutes the assigment of sequences to files\\ninteracts with -r option"
    b_specified_supplied: "if -b is specified AND -s is supplied, using -r will bootstrap across sites\\ninstead of allocating sequences to 'compartments' randomly"
    only_count_pairs: "only count the pairs below a threshold, do not write out all the pairs"
    compute_inter_: "compute inter- and intra-population means suitable for FST caclulations\\nonly applied when -s is used to provide a second file"
    subsample_sequences_value: "subsample sequences with specified probability (a value between 0 and 1, default = 1.0)"
    report_distances_sequence: "report distances between each sequence and itself (as 0); this is useful to ensure every sequence\\nin the input file appears in the output, e.g. for network construction to contrast clustered/unclustered"
    report_progress_updates: "do not report progress updates and other diagnostics to stderr"
    v: ""
  }
  output {
    File out_stdout = stdout()
    File out_direct_output_file = "${in_direct_output_file}"
  }
}