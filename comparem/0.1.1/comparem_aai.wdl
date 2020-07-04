version 1.0

task ComparemAai {
  input {
    String? evalue
    String? per_identity
    String? per_aln_len
    Boolean? keep_r_bhs
    String? cpus
    Boolean? silent
    String query_gene_file
    String sorted_hit_table
    String output_dir
  }
  command <<<
    comparem aai \
      ~{query_gene_file} \
      ~{sorted_hit_table} \
      ~{output_dir} \
      ~{if defined(evalue) then ("--evalue " +  '"' + evalue + '"') else ""} \
      ~{if defined(per_identity) then ("--per_identity " +  '"' + per_identity + '"') else ""} \
      ~{if defined(per_aln_len) then ("--per_aln_len " +  '"' + per_aln_len + '"') else ""} \
      ~{true="--keep_rbhs" false="" keep_r_bhs} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{true="--silent" false="" silent}
  >>>
  parameter_meta {
    evalue: "maximum e-value for reporting an alignments (default: 0.001)"
    per_identity: "minimum percent identity for reporting an alignment (default: 30.0)"
    per_aln_len: "minimum percent coverage of query sequence for reporting an alignment (default: 70.0)"
    keep_r_bhs: "create file with reciprocal best hits"
    cpus: "number of CPUs to use (default: 1)"
    silent: "suppress output"
    query_gene_file: "file with all query genes"
    sorted_hit_table: "sorted file indicating genes passing sequence similarity criteria"
    output_dir: "output directory"
  }
}