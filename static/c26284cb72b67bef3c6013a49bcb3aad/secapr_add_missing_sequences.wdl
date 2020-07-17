version 1.0

task SecaprAddMissingSequences {
  input {
    String? directory_containing_alignments
    String? output_directory_safed
  }
  command <<<
    secapr add_missing_sequences \
      ~{if defined(directory_containing_alignments) then ("--input " +  '"' + directory_containing_alignments + '"') else ""} \
      ~{if defined(output_directory_safed) then ("--output " +  '"' + output_directory_safed + '"') else ""}
  >>>
  parameter_meta {
    directory_containing_alignments: "The directory containing fasta alignments"
    output_directory_safed: "The output directory where results will be safed"
  }
}