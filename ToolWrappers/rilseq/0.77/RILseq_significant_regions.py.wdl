version 1.0

task RILseqSignificantRegionspy {
  input {
    File? genome
    String? total_rna
    Boolean? total_reverse
    Int? min_total_counts
    Float? norm_percentile
    String? bc_dir
    Boolean? ribo_zero
    String? rrna_list
    Boolean? all_interactions
    Boolean? only_singles
    Int? est_utr_lens
    File? bc_chr_list
    String? refseq_dir
    File? targets_file
    File? single_counts
    File? rep_table
    Int? length
    Int? shuffles
    Int? servers
    Boolean? run_rna_up
    Int? rna_up_cmd
    Int? pad_seqs
    Int? se_glen
    Int? max_segs
    Int? min_int
    Int? max_pv
    Int? min_odds_ratio
    File? linear_chromosome_list
  }
  command <<<
    RILseq_significant_regions_py \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(total_rna) then ("--total_RNA " +  '"' + total_rna + '"') else ""} \
      ~{if (total_reverse) then "--total_reverse" else ""} \
      ~{if defined(min_total_counts) then ("--min_total_counts " +  '"' + min_total_counts + '"') else ""} \
      ~{if defined(norm_percentile) then ("--norm_percentile " +  '"' + norm_percentile + '"') else ""} \
      ~{if defined(bc_dir) then ("--bc_dir " +  '"' + bc_dir + '"') else ""} \
      ~{if (ribo_zero) then "--ribozero" else ""} \
      ~{if defined(rrna_list) then ("--rrna_list " +  '"' + rrna_list + '"') else ""} \
      ~{if (all_interactions) then "--all_interactions" else ""} \
      ~{if (only_singles) then "--only_singles" else ""} \
      ~{if defined(est_utr_lens) then ("--est_utr_lens " +  '"' + est_utr_lens + '"') else ""} \
      ~{if defined(bc_chr_list) then ("--BC_chrlist " +  '"' + bc_chr_list + '"') else ""} \
      ~{if defined(refseq_dir) then ("--refseq_dir " +  '"' + refseq_dir + '"') else ""} \
      ~{if defined(targets_file) then ("--targets_file " +  '"' + targets_file + '"') else ""} \
      ~{if defined(single_counts) then ("--single_counts " +  '"' + single_counts + '"') else ""} \
      ~{if defined(rep_table) then ("--rep_table " +  '"' + rep_table + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(shuffles) then ("--shuffles " +  '"' + shuffles + '"') else ""} \
      ~{if defined(servers) then ("--servers " +  '"' + servers + '"') else ""} \
      ~{if (run_rna_up) then "--run_RNAup" else ""} \
      ~{if defined(rna_up_cmd) then ("--RNAup_cmd " +  '"' + rna_up_cmd + '"') else ""} \
      ~{if defined(pad_seqs) then ("--pad_seqs " +  '"' + pad_seqs + '"') else ""} \
      ~{if defined(se_glen) then ("--seglen " +  '"' + se_glen + '"') else ""} \
      ~{if defined(max_segs) then ("--maxsegs " +  '"' + max_segs + '"') else ""} \
      ~{if defined(min_int) then ("--min_int " +  '"' + min_int + '"') else ""} \
      ~{if defined(max_pv) then ("--max_pv " +  '"' + max_pv + '"') else ""} \
      ~{if defined(min_odds_ratio) then ("--min_odds_ratio " +  '"' + min_odds_ratio + '"') else ""} \
      ~{if defined(linear_chromosome_list) then ("--linear_chromosome_list " +  '"' + linear_chromosome_list + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    genome: "genome fasta file (default: None)"
    total_rna: "Normalize in total RNA from these bam files. Enter a\\ncomma separated list of bam files. (default: None)"
    total_reverse: "Total library is the reverse strand. (default: False)"
    min_total_counts: "Minimal number of reads in the total library to assess\\nnormalization from. (default: 10)"
    norm_percentile: "Percentile of IP/total to use when evaluating\\nnormalization of odds ratio in total. The value\\nIP/total is evaluated for every region with at least\\n(--min_total_counts) reads and to avoid outliers the\\n99th percentile is taken as the normalization value\\nmeaning this is the highest amount of IP reads that\\ncan be obtained in this library given the amount of\\ntotal RNA. (default: 0.99)"
    bc_dir: "BioCyc data dir, used to map the regions to genes. If\\nnot given only the regions will be reported (default:\\nNone)"
    ribo_zero: "Remove rRNA prior to the statistical analysis.\\n(default: False)"
    rrna_list: "rRNA list of types for rRNA_prod param in\\nread_genes_data(). this is a no spaces comma-seperated\\nlist. e.g. 'rRNA,rrna,RRNA' (default: rRNA,rrna,RRNA)"
    all_interactions: "Skip all statistical tests and report all the\\ninteractions. (default: False)"
    only_singles: "Return only the single interactions. This should be\\nused with --all_interactions to count the number of\\nsingle reads in the library. (default: False)"
    est_utr_lens: "Estimated UTRs lengths when there is not data.\\n(default: 100)"
    bc_chr_list: "A comma separated dictionary of chromosome names from\\nthe bam file to EcoCyc names. See the names of\\nchromosomes in bam file using samtools view -H\\nfoo.bam. (default: chr,COLI-K12)"
    refseq_dir: "RefSeq dir of organism to get the gene description\\nfrom. (default: None)"
    targets_file: "A list of sRNA-mRNA interactions, should be in EcoCyc\\nacc. (default: None)"
    single_counts: "A file with the counts of single fragments per gene.\\n(default: None)"
    rep_table: "A table containing data on REP elements. This file was\\ngenerated using SmartTables (e.g. this:\\nhttp://ecocyc.org/group?id=biocyc14-8223-3640227683)\\n(default: None)"
    length: "Length of sequence used for mapping. Used to determine\\nthe gene in the regions. (default: 25)"
    shuffles: "Shuffle the first sequence to compute an empirical\\np-value of the hybridization energy using RNAup.\\n(default: 0)"
    servers: "A list of computers to run RNAup on (or number of\\nCPUs) (default: None)"
    run_rna_up: "Run RNAup and compute the interactions predicted\\nstrength (default: False)"
    rna_up_cmd: "Executable of RNAup with its parameters (default:\\nRNAup -Xp -w 25 -b -o)"
    pad_seqs: "When computing RNAup pad the interacting regions.\\n(default: 50)"
    se_glen: "Length of minimal segment of interaction. (default:\\n100)"
    max_segs: "Maximal number of consecutive segments that will be\\ntreated as a region. (default: 5)"
    min_int: "Minimal number of interactions to report. (default: 5)"
    max_pv: "Maximal pvalue to report (after correction). (default:\\n0.05)"
    min_odds_ratio: "Minimal odds ratio to report (default: 1.0)"
    linear_chromosome_list: "A list of chromosomes/plasmids names that are linear\\nand not cyclic.The name should be identical to the\\nchromosome/plasmid name in the given genome fasta\\nfile. (default: )\\n"
  }
  output {
    File out_stdout = stdout()
  }
}