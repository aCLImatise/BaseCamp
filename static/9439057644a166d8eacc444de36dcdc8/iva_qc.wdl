version 1.0

task IvaQc {
  input {
    Directory? embl_dir
    Directory? ref_db
    File? name_reads_fasta
    File? name_reverse_reads
    File? fr
    Int? cds_min_hit_length
    Float? cds_min_hit_id
    Int? ctg_min_hit_length
    Float? ctg_min_hit_id
    Int? s_malt_k
    Int? s_malt_s
    Float? s_malt_id
    Int? gage_mini_d
    Boolean? kraken_preload
    File? ratt_config
    String? ctg_layout_plot_title
    Int? min_ref_cov
    Boolean? no_clean
    Int? threads
    String assembly_dot_fast_a
    String reference
  }
  command <<<
    iva_qc \
      ~{assembly_dot_fast_a} \
      ~{reference} \
      ~{if defined(embl_dir) then ("--embl_dir " +  '"' + embl_dir + '"') else ""} \
      ~{if defined(ref_db) then ("--ref_db " +  '"' + ref_db + '"') else ""} \
      ~{if defined(name_reads_fasta) then ("-f " +  '"' + name_reads_fasta + '"') else ""} \
      ~{if defined(name_reverse_reads) then ("-r " +  '"' + name_reverse_reads + '"') else ""} \
      ~{if defined(fr) then ("--fr " +  '"' + fr + '"') else ""} \
      ~{if defined(cds_min_hit_length) then ("--cds_min_hit_length " +  '"' + cds_min_hit_length + '"') else ""} \
      ~{if defined(cds_min_hit_id) then ("--cds_min_hit_id " +  '"' + cds_min_hit_id + '"') else ""} \
      ~{if defined(ctg_min_hit_length) then ("--ctg_min_hit_length " +  '"' + ctg_min_hit_length + '"') else ""} \
      ~{if defined(ctg_min_hit_id) then ("--ctg_min_hit_id " +  '"' + ctg_min_hit_id + '"') else ""} \
      ~{if defined(s_malt_k) then ("--smalt_k " +  '"' + s_malt_k + '"') else ""} \
      ~{if defined(s_malt_s) then ("--smalt_s " +  '"' + s_malt_s + '"') else ""} \
      ~{if defined(s_malt_id) then ("--smalt_id " +  '"' + s_malt_id + '"') else ""} \
      ~{if defined(gage_mini_d) then ("--gage_minid " +  '"' + gage_mini_d + '"') else ""} \
      ~{if (kraken_preload) then "--kraken_preload" else ""} \
      ~{if defined(ratt_config) then ("--ratt_config " +  '"' + ratt_config + '"') else ""} \
      ~{if defined(ctg_layout_plot_title) then ("--ctg_layout_plot_title " +  '"' + ctg_layout_plot_title + '"') else ""} \
      ~{if defined(min_ref_cov) then ("--min_ref_cov " +  '"' + min_ref_cov + '"') else ""} \
      ~{if (no_clean) then "--noclean" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    embl_dir: "Directory of reference EMBL files. If not used, must\\nuse --ref_db"
    ref_db: "Directory of database made by iva_qc_make_db. If not\\nused, must use --embl_dir"
    name_reads_fasta: "[.gz], --reads_fwd filename[.gz]\\nName of forwards reads fasta or fastq file. Must be\\nused with --reads_rev"
    name_reverse_reads: "[.gz], --reads_rev filename[.gz]\\nName of reverse reads fasta or fastq file. Must be\\nused with --reads_rev"
    fr: "[.gz]    Name of interleaved fasta/q file"
    cds_min_hit_length: "Minimum hit length when running nucmer of CDS\\nsequences against contigs [30]"
    cds_min_hit_id: "Minimum hit percent identity when running nucmer of\\nCDS sequences against contigs [80]"
    ctg_min_hit_length: "Minimum hit length when running nucmer of contigs\\nagainst reference [100]"
    ctg_min_hit_id: "Minimum hit percent identity when running nucmer of\\ncontigs against reference [80]"
    s_malt_k: "kmer hash length in SMALT (the -k option in smalt\\nindex) [15]"
    s_malt_s: "kmer hash step size in SMALT (the -s option in smalt\\nindex) [3]"
    s_malt_id: "Minimum identity threshold for mapping to be reported\\n(the -y option in smalt map) [0.5]"
    gage_mini_d: "in [0,100]\\nMinimum percent identity used when GAGE runs nucmer\\n[80]"
    kraken_preload: "Use the --preload option when running kraken"
    ratt_config: "Specify your own RATT config file [None]"
    ctg_layout_plot_title: "Title to use in contig layout plot [IVA QC contig\\nlayout and read depth]"
    min_ref_cov: "Minimum read coverage of the reference, on each\\nstrand, to count as OK coverage [5]"
    no_clean: "Do not clean temporary files"
    threads: "Number of threads to use [1]"
    assembly_dot_fast_a: "Name of assembly fasta file to be compared to"
    reference: "prefix of output files"
  }
  output {
    File out_stdout = stdout()
  }
}