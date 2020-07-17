version 1.0

task GenerateAdjacentGenes.py {
  input {
    String? input_genes
    String? output_directory_written
  }
  command <<<
    generate_adjacent_genes.py \
      ~{if defined(input_genes) then ("--input_genes " +  '"' + input_genes + '"') else ""} \
      ~{if defined(output_directory_written) then ("--output " +  '"' + output_directory_written + '"') else ""}
  >>>
  parameter_meta {
    input_genes: "Input file with genes positions."
    output_directory_written: "The output directory where the genes sequences are written. Default is '.'."
  }
}