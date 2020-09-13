version 1.0

task Anviexportstructures {
  input {
    String? structure_db
    File? output_dir
    String? gene_caller_ids
    File? genes_of_interest
  }
  command <<<
    anvi_export_structures \
      ~{if defined(structure_db) then ("--structure-db " +  '"' + structure_db + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(gene_caller_ids) then ("--gene-caller-ids " +  '"' + gene_caller_ids + '"') else ""} \
      ~{if defined(genes_of_interest) then ("--genes-of-interest " +  '"' + genes_of_interest + '"') else ""}
  >>>
  parameter_meta {
    structure_db: "Anvi'o structure database."
    output_dir: "Directory path for output files"
    gene_caller_ids: "Gene caller ids. Multiple of them can be declared\\nseparated by a delimiter (the default is a comma). In\\nanvi-gen-variability-profile, if you declare nothing\\nyou will get all genes matching your other filtering\\ncriteria. In other programs, you may get everything,\\nnothing, or an error. It really depends on the\\nsituation. Fortunately, mistakes are cheap, so it's\\nworth a try."
    genes_of_interest: "A file with anvi'o gene caller IDs. There should be\\nonly one column in the file, and each line should\\ncorrespond to a unique gene caller id (without a\\ncolumn header).\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_dir = "${in_output_dir}"
  }
}