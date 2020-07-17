version 1.0

task Mashclust.py {
  input {
    String? requiredinput_fasta_file
    String? output_directory_extract
    String? distance
    Boolean? output_grouped
    String common_mash_reference_do_tpy
  }
  command <<<
    mashclust.py \
      ~{common_mash_reference_do_tpy} \
      ~{if defined(requiredinput_fasta_file) then ("--input " +  '"' + requiredinput_fasta_file + '"') else ""} \
      ~{if defined(output_directory_extract) then ("--output " +  '"' + output_directory_extract + '"') else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{true="--output_grouped" false="" output_grouped}
  >>>
  parameter_meta {
    requiredinput_fasta_file: "REQUIRED.Input FASTA file"
    output_directory_extract: "Output directory to extract clusteres FASTA"
    distance: "Threshold distance to cluster sequences[0-1] 0(identical) 1(unrelated) (default 0.5)"
    output_grouped: "Output clustered (non representative sequences"
    common_mash_reference_do_tpy: ""
  }
}