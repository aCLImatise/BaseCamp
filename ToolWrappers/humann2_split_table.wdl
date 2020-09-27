version 1.0

task Humann2SplitTable {
  input {
    Boolean? verbose
    String? gene_table_read
    Directory? directory_output_files
    String? taxonomy_index
    String? taxonomy_level
  }
  command <<<
    humann2_split_table \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(gene_table_read) then ("--input " +  '"' + gene_table_read + '"') else ""} \
      ~{if defined(directory_output_files) then ("--output " +  '"' + directory_output_files + '"') else ""} \
      ~{if defined(taxonomy_index) then ("--taxonomy_index " +  '"' + taxonomy_index + '"') else ""} \
      ~{if defined(taxonomy_level) then ("--taxonomy_level " +  '"' + taxonomy_level + '"') else ""}
  >>>
  parameter_meta {
    verbose: "additional output is printed"
    gene_table_read: "the gene table to read"
    directory_output_files: "the directory for output files"
    taxonomy_index: "the index of the gene in the taxonomy data"
    taxonomy_level: "the level of taxonomy for the output (if input is from picrust metagenome_contributions.py)\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_output_files = "${in_directory_output_files}"
  }
}