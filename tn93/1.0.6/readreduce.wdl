version 1.0

task Readreduce {
  input {
    File? direct_output_file
    Float? handle_ambigous_nucleotides
    Int? merge_reads_match
    Int? mimimum_cluster_size
    Int? sequence_name_form
    Boolean? report_results_json
    Boolean? report_progress_updates
  }
  command <<<
    readreduce \
      ~{if defined(direct_output_file) then ("-o " +  '"' + direct_output_file + '"') else ""} \
      ~{if defined(handle_ambigous_nucleotides) then ("-a " +  '"' + handle_ambigous_nucleotides + '"') else ""} \
      ~{if defined(merge_reads_match) then ("-l " +  '"' + merge_reads_match + '"') else ""} \
      ~{if defined(mimimum_cluster_size) then ("-s " +  '"' + mimimum_cluster_size + '"') else ""} \
      ~{if defined(sequence_name_form) then ("-d " +  '"' + sequence_name_form + '"') else ""} \
      ~{if (report_results_json) then "-j" else ""} \
      ~{if (report_progress_updates) then "-q" else ""}
  >>>
  parameter_meta {
    direct_output_file: "direct the output to a file named OUTPUT (default=stdout)"
    handle_ambigous_nucleotides: "handle ambigous nucleotides using one of the following strategies (default=resolve)\\nresolve: resolve ambiguities to minimize distance (e.g.R matches A);\\naverage: average ambiguities (e.g.R-A is 0.5 A-A and 0.5 G-A);\\nskip: do not include sites with ambiguous nucleotides in distance calculations;\\ngapmm: a gap ('-') matched to anything other than another gap is like matching an N (4-fold ambig) to it;"
    merge_reads_match: "merge reads that match over at least this many positions (an integer >0, default=100):"
    mimimum_cluster_size: "mimimum cluster size to report in output (an integer >0, default=16):"
    sequence_name_form: "if sequence name is of the form 'somethingCOUNTS_IN_NAMEinteger' then treat the integer as a copy number\\nwhen counting reads; also output cluster sizes using the same separator (a character, default=':'):"
    report_results_json: "report the results to a JSON file (instead of a FASTA MSA)"
    report_progress_updates: "do not report progress updates and other diagnostics to stderr"
  }
  output {
    File out_stdout = stdout()
    File out_direct_output_file = "${in_direct_output_file}"
  }
}