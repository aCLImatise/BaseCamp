version 1.0

task RnasambaClassify {
  input {
    File? protein_fast_a
    String? verbose
    String output_file
    String classification_dot
    String weights
  }
  command <<<
    rnasamba classify \
      ~{output_file} \
      ~{classification_dot} \
      ~{weights} \
      ~{if defined(protein_fast_a) then ("--protein_fasta " +  '"' + protein_fast_a + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    protein_fast_a: "output FASTA file containing translated sequences for\\nthe predicted coding ORFs. (default: None)"
    verbose: "print the progress of the classification. 0 = silent,\\n1 = current step. (default: 0)\\n"
    output_file: "output TSV file containing the results of the"
    classification_dot: "fasta_file            input FASTA file containing transcript sequences."
    weights: "input HDF5 file(s) containing weights of a trained\\nRNAsamba network (if more than a file is provided, an\\nensembling of the models will be performed)."
  }
  output {
    File out_stdout = stdout()
    File out_protein_fast_a = "${in_protein_fast_a}"
  }
}