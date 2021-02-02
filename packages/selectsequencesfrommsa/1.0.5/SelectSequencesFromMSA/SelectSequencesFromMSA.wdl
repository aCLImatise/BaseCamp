version 1.0

task SelectSequencesFromMSA {
  input {
    File? input_clustal_path
    File? output_path
    File? output_file_name
    Int? seq_ence_number
    Int? optimal_identity
    Int? maximal_idenity
    Boolean? reference_sequence
    File? distance_matrix_path
    String? reformat_id_option
    Boolean? verbose
    Boolean? quiet
    String results_dot_selected
  }
  command <<<
    SelectSequencesFromMSA \
      ~{results_dot_selected} \
      ~{if defined(input_clustal_path) then ("--inputclustalpath " +  '"' + input_clustal_path + '"') else ""} \
      ~{if defined(output_path) then ("--outputpath " +  '"' + output_path + '"') else ""} \
      ~{if defined(output_file_name) then ("--outputfilename " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(seq_ence_number) then ("--seqencenumber " +  '"' + seq_ence_number + '"') else ""} \
      ~{if defined(optimal_identity) then ("--optimalidentity " +  '"' + optimal_identity + '"') else ""} \
      ~{if defined(maximal_idenity) then ("--maximalidenity " +  '"' + maximal_idenity + '"') else ""} \
      ~{if (reference_sequence) then "--referencesequence" else ""} \
      ~{if defined(distance_matrix_path) then ("--distancematrixpath " +  '"' + distance_matrix_path + '"') else ""} \
      ~{if defined(reformat_id_option) then ("--reformatidoption " +  '"' + reformat_id_option + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    input_clustal_path: "Path to input clustal file"
    output_path: "Path to output directory. Default:\\ncurrent working directory"
    output_file_name: "Output filename. Default:"
    seq_ence_number: "Number of sequences in the output\\nalignment. (Default: 6)"
    optimal_identity: "Optimize for this percentage of mean\\npairwise identity (Default: 80)"
    maximal_idenity: "Sequences with a higher percentage of\\npairwise Identity will be removed.\\n(Default: 95)"
    reference_sequence: "The first sequence (=reference\\nsequence) is always present in the output\\nalignment per default. Default: True"
    distance_matrix_path: "Path to distance matrix output file,\\nonly internal for interal sequence\\nselection, e.g. /home/user/distmat\\n(Default: )"
    reformat_id_option: "Defines how sequence id is reformated,\\ne.g. fitting for RNAcode or not (Default:\\nRNAcode)"
    verbose: "Loud verbosity"
    quiet: "Quiet verbosity"
    results_dot_selected: "-e --toogleexternalselectsequences  Use only replacement of alignment"
  }
  output {
    File out_stdout = stdout()
    File out_output_path = "${in_output_path}"
    File out_output_file_name = "${in_output_file_name}"
    File out_distance_matrix_path = "${in_distance_matrix_path}"
  }
}