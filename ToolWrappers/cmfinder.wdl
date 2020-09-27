version 1.0

task Cmfinder {
  input {
    File? _candidate_file
    File? initial_motif_alignment
    File? initial_covariance_model
    File? output_motif_structural
    String? print_intermediate_alignments
    String? gap_threshold_determine
    Boolean? hmm
    Boolean? cmz_asha
    Boolean? update
    String? in_format
    Boolean? fragmentary
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
      ~{if defined(gap_threshold_determine) then ("--g " +  '"' + gap_threshold_determine + '"') else ""} \
      ~{if (hmm) then "--hmm" else ""} \
      ~{if (cmz_asha) then "--cmzasha" else ""} \
      ~{if (update) then "--update" else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if (fragmentary) then "--fragmentary" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    _candidate_file: ": the candidate file"
    initial_motif_alignment: ": the initial motif alignment"
    initial_covariance_model: ": the initial covariance model"
    output_motif_structural: ": the output motif structural alignment in stockholm format"
    print_intermediate_alignments: ": print intermediate alignments"
    gap_threshold_determine: ": the gap threshold to determine the conserved column"
    hmm: ": apply HMM filter"
    cmz_asha: ": apply cmzasha filter"
    update: ": Update instead of scanning for new candidates at each iteration"
    in_format: ": specify that input alignment is in format <s>"
    fragmentary: ": account for fragmentary input sequences"
    options: ""
    seq_file_in: ""
    cm_file_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}