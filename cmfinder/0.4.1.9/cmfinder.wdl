version 1.0

task Cmfinder {
  input {
    String? _candidate_file
    String? initial_motif_alignment
    String? initial_covariance_model
    String? output_motif_structural
    String? print_intermediate_alignments
    Boolean? options
    String seq_file_in
    String cm_file_output
  }
  command <<<
    cmfinder \
      ~{seq_file_in} \
      ~{cm_file_output} \
      ~{if defined(_candidate_file) then ("-c " +  '"' + _candidate_file + '"') else ""} \
      ~{if defined(initial_motif_alignment) then ("-a " +  '"' + initial_motif_alignment + '"') else ""} \
      ~{if defined(initial_covariance_model) then ("-i " +  '"' + initial_covariance_model + '"') else ""} \
      ~{if defined(output_motif_structural) then ("-o " +  '"' + output_motif_structural + '"') else ""} \
      ~{if defined(print_intermediate_alignments) then ("-v " +  '"' + print_intermediate_alignments + '"') else ""} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    _candidate_file: ": the candidate file "
    initial_motif_alignment: ": the initial motif alignment "
    initial_covariance_model: ": the initial covariance model"
    output_motif_structural: ": the output motif structural alignment in stockholm format "
    print_intermediate_alignments: ": print intermediate alignments "
    options: ""
    seq_file_in: ""
    cm_file_output: ""
  }
}