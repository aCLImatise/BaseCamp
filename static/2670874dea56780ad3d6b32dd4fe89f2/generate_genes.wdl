version 1.0

task GenerateGenes.py {
  input {
    String? input_genes
    String? input_genome
    String? output_directory_written
  }
  command <<<
    generate_genes.py \
      ~{if defined(input_genes) then ("--input_genes " +  '"' + input_genes + '"') else ""} \
      ~{if defined(input_genome) then ("--input_genome " +  '"' + input_genome + '"') else ""} \
      ~{if defined(output_directory_written) then ("--output " +  '"' + output_directory_written + '"') else ""}
  >>>
  parameter_meta {
    input_genes: "Input file with genes positions."
    input_genome: "Input FASTA genome containing the genome sequences."
    output_directory_written: "The output directory where the genes sequences are written. Default is '.'."
  }
}