version 1.0

task Okeeporremovesamplesfromfasta {
  input {
    Boolean? retain
    File? output_file_name
    String fast_a_file_path
    String samples_file_path
  }
  command <<<
    o_keep_or_remove_samples_from_fasta \
      ~{fast_a_file_path} \
      ~{samples_file_path} \
      ~{if (retain) then "--retain" else ""} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""}
  >>>
  parameter_meta {
    retain: "If declared, resulting FASTA file would contain\\nsamples that \\\"match\\\" sample names listed in the\\n\\\"samples\\\" file. The default behavior is the vice\\nversa."
    output_file_name: "Output file name.\\n"
    fast_a_file_path: "FASTA file to remove or retain samples from"
    samples_file_path: "File that contains a sample name for each line"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}