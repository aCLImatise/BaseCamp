version 1.0

task Trnascan14 {
  input {
    Boolean? use_original_trnascan
    Boolean? use_relaxed_parameters
    Boolean? use_alternate_parameters
    Boolean? _suppress_credits
    String? write_results_outfile
    Int? start_sequence_numbering
    Boolean? options
    String trnascan
    String seq_file
  }
  command <<<
    trnascan_1_4 \
      ~{trnascan} \
      ~{seq_file} \
      ~{if (use_original_trnascan) then "-s" else ""} \
      ~{if (use_relaxed_parameters) then "-r" else ""} \
      ~{if (use_alternate_parameters) then "-a" else ""} \
      ~{if (_suppress_credits) then "-c" else ""} \
      ~{if defined(write_results_outfile) then ("-o " +  '"' + write_results_outfile + '"') else ""} \
      ~{if defined(start_sequence_numbering) then ("-i " +  '"' + start_sequence_numbering + '"') else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    use_original_trnascan: ": use original tRNAscan 1.3 parameters (default)"
    use_relaxed_parameters: ": use relaxed search parameters (used with tRNAscan-SE)"
    use_alternate_parameters: ": use alternate (user-set) search parameters"
    _suppress_credits: ": suppress credits"
    write_results_outfile: ": write results to <outfile>"
    start_sequence_numbering: ": start sequence numbering at <integer> (def=1)"
    options: ""
    trnascan: ""
    seq_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}