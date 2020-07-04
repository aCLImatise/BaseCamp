version 1.0

task GenerateOverlappingGenes.py {
  input {
    String? input_genes
    String? head
    String? output_directory_written
  }
  command <<<
    generate_overlapping_genes.py \
      ~{if defined(input_genes) then ("--input_genes " +  '"' + input_genes + '"') else ""} \
      ~{if defined(head) then ("--head " +  '"' + head + '"') else ""} \
      ~{if defined(output_directory_written) then ("--output " +  '"' + output_directory_written + '"') else ""}
  >>>
  parameter_meta {
    input_genes: "Input file with genes positions."
    head: "This is added in the beginning of the output filenames. Default is ."
    output_directory_written: "The output directory where the genes sequences are written. Default is '.'."
  }
}