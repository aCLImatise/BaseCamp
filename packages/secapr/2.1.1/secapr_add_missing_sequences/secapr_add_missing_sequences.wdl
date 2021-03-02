version 1.0

task SecaprAddMissingSequences {
  input {
    Directory? directory_containing_alignments
    Directory? output_directory_safed
  }
  command <<<
    secapr add_missing_sequences \
      ~{if defined(directory_containing_alignments) then ("--input " +  '"' + directory_containing_alignments + '"') else ""} \
      ~{if defined(output_directory_safed) then ("--output " +  '"' + output_directory_safed + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/secapr:2.1.1--pyh3252c3a_0"
  }
  parameter_meta {
    directory_containing_alignments: "The directory containing fasta alignments"
    output_directory_safed: "The output directory where results will be safed"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_safed = "${in_output_directory_safed}"
  }
}