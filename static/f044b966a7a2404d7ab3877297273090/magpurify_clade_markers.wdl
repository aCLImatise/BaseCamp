version 1.0

task MagpurifyCladeMarkers {
  input {
    String? db
    Array[String] exclude_clades
    Int? min_bin_fract
    Int? min_contig_fract
    Int? min_gene_fract
    Int? min_genes
    String? lowest_rank
    String? threads
    String fna
    String out
  }
  command <<<
    magpurify clade-markers \
      ~{fna} \
      ~{out} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(exclude_clades) then ("--exclude_clades " +  '"' + exclude_clades + '"') else ""} \
      ~{if defined(min_bin_fract) then ("--min_bin_fract " +  '"' + min_bin_fract + '"') else ""} \
      ~{if defined(min_contig_fract) then ("--min_contig_fract " +  '"' + min_contig_fract + '"') else ""} \
      ~{if defined(min_gene_fract) then ("--min_gene_fract " +  '"' + min_gene_fract + '"') else ""} \
      ~{if defined(min_genes) then ("--min_genes " +  '"' + min_genes + '"') else ""} \
      ~{if defined(lowest_rank) then ("--lowest_rank " +  '"' + lowest_rank + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    db: "Path to reference database. By default, the MAGPURIFY environmental variable is used (default: None)"
    exclude_clades: "List of clades to exclude (ex: s__Variovorax_sp_CF313) (default: None)"
    min_bin_fract: "Min fraction of bin length supported by contigs that agree with consensus taxonomy (default: 0.6)"
    min_contig_fract: "Min fraction of classified contig length that agree with consensus taxonomy (default: 0.75)"
    min_gene_fract: "Min fraction of classified genes that agree with consensus taxonomy (default: 0.0)"
    min_genes: "Min number of genes that agree with consensus taxonomy (default=rank-specific-cutoffs) (default: None)"
    lowest_rank: "Lowest rank for bin classification (default: None)"
    threads: "Number of CPUs to use (default: 1)"
    fna: "Path to input genome in FASTA format"
    out: "Output directory to store results and intermediate files"
  }
}