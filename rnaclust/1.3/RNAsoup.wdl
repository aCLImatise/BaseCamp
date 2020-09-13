version 1.0

task RNAsoup {
  input {
    File? tree_newick_format
    File? fasta_file_sequences
    File? file_containing_mfe
    Directory? output_directory_created
    Float? significance_level_k
    Boolean? print_version_information
  }
  command <<<
    RNAsoup \
      ~{if defined(tree_newick_format) then ("-t " +  '"' + tree_newick_format + '"') else ""} \
      ~{if defined(fasta_file_sequences) then ("-f " +  '"' + fasta_file_sequences + '"') else ""} \
      ~{if defined(file_containing_mfe) then ("-m " +  '"' + file_containing_mfe + '"') else ""} \
      ~{if defined(output_directory_created) then ("-o " +  '"' + output_directory_created + '"') else ""} \
      ~{if defined(significance_level_k) then ("-k " +  '"' + significance_level_k + '"') else ""} \
      ~{if (print_version_information) then "-v" else ""}
  >>>
  parameter_meta {
    tree_newick_format: "Tree in NEWICK format"
    fasta_file_sequences: "FASTA file of all sequences in tree"
    file_containing_mfe: "File containing the RNAalifold consensus MFE for each subtree < 500 sequences"
    output_directory_created: "Output directory which is created to store the output"
    significance_level_k: "Significance level k"
    print_version_information: "Print version information"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_created = "${in_output_directory_created}"
  }
}