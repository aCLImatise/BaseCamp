version 1.0

task RnasambaClassify {
  input {
    String? protein_fast_a
    String? verbose
    String output_file
    String fast_a_file
    String weights
  }
  command <<<
    rnasamba classify \
      ~{output_file} \
      ~{fast_a_file} \
      ~{weights} \
      ~{if defined(protein_fast_a) then ("--protein_fasta " +  '"' + protein_fast_a + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    protein_fast_a: "output FASTA file containing translated sequences for the predicted coding ORFs. (default: None)"
    verbose: "print the progress of the classification. 0 = silent, 1 = current step. (default: 0)"
    output_file: "output TSV file containing the results of the classification."
    fast_a_file: "input FASTA file containing transcript sequences."
    weights: "input HDF5 file(s) containing weights of a trained RNAsamba network (if more than a file is provided, an ensembling of the models will be performed)."
  }
}