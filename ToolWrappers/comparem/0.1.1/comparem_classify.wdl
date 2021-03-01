version 1.0

task ComparemClassify {
  input {
    Int? num_top_targets
    File? taxonomy_file
    Float? evalue
    Float? per_identity
    Int? per_aln_len
    File? file_ext
    Boolean? keep_r_bhs
    Int? cpus
    Boolean? silent
    String identify_similar_genomes
    String query_gene_file
    String target_gene_file
    String sorted_hit_table
    String output_directory
  }
  command <<<
    comparem classify \
      ~{identify_similar_genomes} \
      ~{query_gene_file} \
      ~{target_gene_file} \
      ~{sorted_hit_table} \
      ~{output_directory} \
      ~{if defined(num_top_targets) then ("--num_top_targets " +  '"' + num_top_targets + '"') else ""} \
      ~{if defined(taxonomy_file) then ("--taxonomy_file " +  '"' + taxonomy_file + '"') else ""} \
      ~{if defined(evalue) then ("--evalue " +  '"' + evalue + '"') else ""} \
      ~{if defined(per_identity) then ("--per_identity " +  '"' + per_identity + '"') else ""} \
      ~{if defined(per_aln_len) then ("--per_aln_len " +  '"' + per_aln_len + '"') else ""} \
      ~{if defined(file_ext) then ("--file_ext " +  '"' + file_ext + '"') else ""} \
      ~{if (keep_r_bhs) then "--keep_rbhs" else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{if (silent) then "--silent" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    num_top_targets: "number of top scoring target genomes to report per\\nquery genome (default: 1)"
    taxonomy_file: "file indicating taxonomic identification of all target\\ngenomes"
    evalue: "e-value cutoff for identifying initial blast hits\\n(default: 0.001)"
    per_identity: "percent identity for defining homology (default: 30.0)"
    per_aln_len: "percent alignment length of query sequence for\\ndefining homology (default: 70.0)"
    file_ext: "extension of files to process (default: fna)"
    keep_r_bhs: "create file with reciprocal best hits"
    cpus: "number of CPUs to use (default: 1)"
    silent: "suppress output"
    identify_similar_genomes: "Identify similar genomes based on AAI value."
    query_gene_file: "file with all query genes"
    target_gene_file: "file with all target genes"
    sorted_hit_table: "sorted file indicating genes passing sequence\\nsimilarity criteria"
    output_directory: "output directory"
  }
  output {
    File out_stdout = stdout()
  }
}