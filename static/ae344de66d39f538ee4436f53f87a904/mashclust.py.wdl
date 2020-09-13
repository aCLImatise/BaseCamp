version 1.0

task Mashclustpy {
  input {
    Directory? requiredinput_fasta_file
    Directory? output_directory_extract
    Float? distance
    Boolean? output_grouped
    String common_mash_reference_do_tpy
  }
  command <<<
    mashclust_py \
      ~{common_mash_reference_do_tpy} \
      ~{if defined(requiredinput_fasta_file) then ("--input " +  '"' + requiredinput_fasta_file + '"') else ""} \
      ~{if defined(output_directory_extract) then ("--output " +  '"' + output_directory_extract + '"') else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if (output_grouped) then "--output_grouped" else ""}
  >>>
  parameter_meta {
    requiredinput_fasta_file: "REQUIRED.Input FASTA file"
    output_directory_extract: "Output directory to extract clusteres FASTA"
    distance: "Threshold distance to cluster sequences[0-1]\\n0(identical) 1(unrelated) (default 0.5)"
    output_grouped: "Output clustered (non representative sequences"
    common_mash_reference_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_extract = "${in_output_directory_extract}"
  }
}