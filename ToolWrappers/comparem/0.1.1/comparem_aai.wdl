version 1.0

task ComparemAai {
  input {
    Float? evalue
    Float? per_identity
    Float? per_aln_len
    Boolean? keep_r_bhs
    Int? cpus
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
      ~{if (keep_r_bhs) then "--keep_rbhs" else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{if (silent) then "--silent" else ""}
  >>>
  parameter_meta {
    evalue: "maximum e-value for reporting an alignments (default:\\n0.001)"
    per_identity: "minimum percent identity for reporting an alignment\\n(default: 30.0)"
    per_aln_len: "minimum percent coverage of query sequence for\\nreporting an alignment (default: 70.0)"
    keep_r_bhs: "create file with reciprocal best hits"
    cpus: "number of CPUs to use (default: 1)"
    silent: "suppress output"
    query_gene_file: "file with all query genes"
    sorted_hit_table: "sorted file indicating genes passing sequence\\nsimilarity criteria"
    output_dir: "output directory"
  }
  output {
    File out_stdout = stdout()
  }
}