version 1.0

task AnviExportStructures {
  input {
    String? structure_db
    String? output_dir
    String? gene_caller_ids
    File? genes_of_interest
  }
  command <<<
    anvi-export-structures \
      ~{if defined(structure_db) then ("--structure-db " +  '"' + structure_db + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(gene_caller_ids) then ("--gene-caller-ids " +  '"' + gene_caller_ids + '"') else ""} \
      ~{if defined(genes_of_interest) then ("--genes-of-interest " +  '"' + genes_of_interest + '"') else ""}
  >>>
  parameter_meta {
    structure_db: "Anvi'o structure database."
    output_dir: "Directory path for output files"
    gene_caller_ids: "Gene caller ids. Multiple of them can be declared separated by a delimiter (the default is a comma). In anvi-gen-variability-profile, if you declare nothing you will get all genes matching your other filtering criteria. In other programs, you may get everything, nothing, or an error. It really depends on the situation. Fortunately, mistakes are cheap, so it's worth a try."
    genes_of_interest: "A file with anvi'o gene caller IDs. There should be only one column in the file, and each line should correspond to a unique gene caller id (without a column header)."
  }
}