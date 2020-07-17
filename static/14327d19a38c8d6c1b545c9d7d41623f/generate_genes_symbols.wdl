version 1.0

task GenerateGenesSymbols.py {
  input {
    String? organism
    String? output_directory_stored
  }
  command <<<
    generate_genes_symbols.py \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(output_directory_stored) then ("--output " +  '"' + output_directory_stored + '"') else ""}
  >>>
  parameter_meta {
    organism: "The name of the organism for which the genes positions are downloaded, e.g. homo_sapiens, mus_musculus, etc. Default is 'homo_sapiens'."
    output_directory_stored: "The output directory where the genes positions are stored. Default is '.'."
  }
}