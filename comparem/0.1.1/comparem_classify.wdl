version 1.0

task ComparemClassify {
  input {
    String? num_top_targets
    String? taxonomy_file
    String? evalue
    String? per_identity
    String? per_aln_len
    File? file_ext
    Boolean? keep_r_bhs
    String? cpus
    Boolean? silent
    String query_gene_file
    String target_gene_file
    String sorted_hit_table
    String output_dir
  }
  command <<<
    comparem classify \
      ~{query_gene_file} \
      ~{target_gene_file} \
      ~{sorted_hit_table} \
      ~{output_dir} \
      ~{if defined(num_top_targets) then ("--num_top_targets " +  '"' + num_top_targets + '"') else ""} \
      ~{if defined(taxonomy_file) then ("--taxonomy_file " +  '"' + taxonomy_file + '"') else ""} \
      ~{if defined(evalue) then ("--evalue " +  '"' + evalue + '"') else ""} \
      ~{if defined(per_identity) then ("--per_identity " +  '"' + per_identity + '"') else ""} \
      ~{if defined(per_aln_len) then ("--per_aln_len " +  '"' + per_aln_len + '"') else ""} \
      ~{if defined(file_ext) then ("--file_ext " +  '"' + file_ext + '"') else ""} \
      ~{true="--keep_rbhs" false="" keep_r_bhs} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{true="--silent" false="" silent}
  >>>
  parameter_meta {
    num_top_targets: "number of top scoring target genomes to report per query genome (default: 1)"
    taxonomy_file: "file indicating taxonomic identification of all target genomes"
    evalue: "e-value cutoff for identifying initial blast hits (default: 0.001)"
    per_identity: "percent identity for defining homology (default: 30.0)"
    per_aln_len: "percent alignment length of query sequence for defining homology (default: 70.0)"
    file_ext: "extension of files to process (default: fna)"
    keep_r_bhs: "create file with reciprocal best hits"
    cpus: "number of CPUs to use (default: 1)"
    silent: "suppress output"
    query_gene_file: "file with all query genes"
    target_gene_file: "file with all target genes"
    sorted_hit_table: "sorted file indicating genes passing sequence similarity criteria"
    output_dir: "output directory"
  }
}