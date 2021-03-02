version 1.0

task Anviexportstructures {
  input {
    String? anvio_structure_database
    File? output_dir
    String? gene_caller_ids
    File? genes_of_interest
    String _can_provide
    String protein_structure_txt
  }
  command <<<
    anvi_export_structures \
      ~{_can_provide} \
      ~{protein_structure_txt} \
      ~{if defined(anvio_structure_database) then ("--structure-db " +  '"' + anvio_structure_database + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(gene_caller_ids) then ("--gene-caller-ids " +  '"' + gene_caller_ids + '"') else ""} \
      ~{if defined(genes_of_interest) then ("--genes-of-interest " +  '"' + genes_of_interest + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    anvio_structure_database: "Anvi'o structure database. (default: None)"
    output_dir: "Directory path for output files (default: None)"
    gene_caller_ids: "Gene caller ids. Multiple of them can be declared\\nseparated by a delimiter (the default is a comma). In\\nanvi-gen-variability-profile, if you declare nothing\\nyou will get all genes matching your other filtering\\ncriteria. In other programs, you may get everything,\\nnothing, or an error. It really depends on the\\nsituation. Fortunately, mistakes are cheap, so it's\\nworth a try. (default: None)"
    genes_of_interest: "A file with anvi'o gene caller IDs. There should be\\nonly one column in the file, and each line should\\ncorrespond to a unique gene caller id (without a\\ncolumn header). (default: None)"
    _can_provide: "🍕 Can provide: "
    protein_structure_txt: "🍺 More on `anvi-export-structures`:"
  }
  output {
    File out_stdout = stdout()
    File out_output_dir = "${in_output_dir}"
  }
}