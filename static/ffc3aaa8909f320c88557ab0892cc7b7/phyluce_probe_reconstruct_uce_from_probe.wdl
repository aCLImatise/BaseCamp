version 1.0

task PhyluceProbeReconstructUceFromProbe {
  input {
    String? input_probe_set
    String? output_fasta_file
    String? verbosity
    String? log_path
  }
  command <<<
    phyluce_probe_reconstruct_uce_from_probe \
      ~{if defined(input_probe_set) then ("--input " +  '"' + input_probe_set + '"') else ""} \
      ~{if defined(output_fasta_file) then ("--output " +  '"' + output_fasta_file + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""}
  >>>
  parameter_meta {
    input_probe_set: "The input probe set"
    output_fasta_file: "The output FASTA file"
    verbosity: "The logging level to use."
    log_path: "The path to a directory to hold logs."
  }
}