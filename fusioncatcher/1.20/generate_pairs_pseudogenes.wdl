version 1.0

task GeneratePairsPseudogenes.py {
  input {
    String? input_file_genes
    String? paralogs
    String? output_directory_written
  }
  command <<<
    generate_pairs_pseudogenes.py \
      ~{if defined(input_file_genes) then ("--input " +  '"' + input_file_genes + '"') else ""} \
      ~{if defined(paralogs) then ("--paralogs " +  '"' + paralogs + '"') else ""} \
      ~{if defined(output_directory_written) then ("--output " +  '"' + output_directory_written + '"') else ""}
  >>>
  parameter_meta {
    input_file_genes: "Input file with genes positions."
    paralogs: "Input file containing the paralogs genes. It is optional and by using the pairs of paralog genes are combined with the pairs of pseudogenes."
    output_directory_written: "The output directory where the list of pairs of pseudogenes are written. Default is '.'."
  }
}