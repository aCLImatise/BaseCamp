version 1.0

task AssemblypyOrderAndOrient {
  input {
    String? out_alternate_contigs
    Int? break_len
    Int? max_gap
    Int? min_match
    Int? min_cluster
    Int? min_pct_id
    Int? min_contig_len
    Int? min_pct_contig_aligned
    String? loglevel
    Directory? tmp_dir
    Boolean? tmp_dir_keep
    String in_fasta
    String in_reference
    String out_fast_a
  }
  command <<<
    assembly_py order_and_orient \
      ~{in_fasta} \
      ~{in_reference} \
      ~{out_fast_a} \
      ~{if defined(out_alternate_contigs) then ("--outAlternateContigs " +  '"' + out_alternate_contigs + '"') else ""} \
      ~{if defined(break_len) then ("--breaklen " +  '"' + break_len + '"') else ""} \
      ~{if defined(max_gap) then ("--maxgap " +  '"' + max_gap + '"') else ""} \
      ~{if defined(min_match) then ("--minmatch " +  '"' + min_match + '"') else ""} \
      ~{if defined(min_cluster) then ("--mincluster " +  '"' + min_cluster + '"') else ""} \
      ~{if defined(min_pct_id) then ("--min_pct_id " +  '"' + min_pct_id + '"') else ""} \
      ~{if defined(min_contig_len) then ("--min_contig_len " +  '"' + min_contig_len + '"') else ""} \
      ~{if defined(min_pct_contig_aligned) then ("--min_pct_contig_aligned " +  '"' + min_pct_contig_aligned + '"') else ""} \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""} \
      ~{if defined(tmp_dir) then ("--tmp_dir " +  '"' + tmp_dir + '"') else ""} \
      ~{if (tmp_dir_keep) then "--tmp_dirKeep" else ""}
  >>>
  parameter_meta {
    out_alternate_contigs: "Output sequences (FASTA format) from alternative\\ncontigs that mapped, but were not chosen for the final\\noutput."
    break_len: "Amount to extend alignment clusters by (if --extend).\\nnucmer default 200, promer default 60."
    max_gap: "Maximum gap between two adjacent matches in a cluster.\\nOur default is 200. nucmer default 90, promer default\\n30. Manual suggests going to 1000."
    min_match: "Minimum length of an maximal exact match. Our default\\nis 10. nucmer default 20, promer default 6."
    min_cluster: "Minimum cluster length. nucmer default 65, promer\\ndefault 20."
    min_pct_id: "show-tiling: minimum percent identity for contig\\nalignment (0.0 - 1.0, default: 0.6)"
    min_contig_len: "show-tiling: reject contigs smaller than this\\n(default: 200)"
    min_pct_contig_aligned: "show-tiling: minimum percent of contig length in\\nalignment (0.0 - 1.0, default: 0.3)"
    loglevel: "Verboseness of output. [default: DEBUG]"
    tmp_dir: "Base directory for temp files. [default: /tmp]"
    tmp_dir_keep: "Keep the tmp_dir if an exception occurs while running.\\nDefault is to delete all temp files at the end, even\\nif there's a failure.\\n"
    in_fasta: "Input de novo assembly/contigs, FASTA format."
    in_reference: "Reference genome for ordering, orienting, and merging\\ncontigs, FASTA format."
    out_fast_a: "Output assembly, FASTA format, with the same number of\\nchromosomes as inReference, and in the same order."
  }
  output {
    File out_stdout = stdout()
  }
}