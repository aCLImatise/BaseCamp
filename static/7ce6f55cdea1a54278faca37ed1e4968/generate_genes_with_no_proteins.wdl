version 1.0

task GenerateGenesWithNoProteins.py {
  input {
    String? text_file_containg
    String? output_file_containing
    String? header
  }
  command <<<
    generate_genes_with_no_proteins.py \
      ~{if defined(text_file_containg) then ("--input " +  '"' + text_file_containg + '"') else ""} \
      ~{if defined(output_file_containing) then ("--output " +  '"' + output_file_containing + '"') else ""} \
      ~{if defined(header) then ("--header " +  '"' + header + '"') else ""}
  >>>
  parameter_meta {
    text_file_containg: "A text file containg all the information regarding exons, genes, proteins and their positions. (see 'more_exons_ensembl.txt' file)"
    output_file_containing: "The output file containing all Ensembl gene ids which have no protein product."
    header: "The header of the output file."
  }
}