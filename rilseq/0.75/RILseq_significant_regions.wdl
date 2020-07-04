version 1.0

task RILseqSignificantRegions.py {
  input {
    String? genome
    String? total_rna
    Boolean? total_reverse
    Int? min_total_counts
    String? norm_percentile
    String? bc_dir
    Boolean? ribo_zero
    String? rrna_list
    Boolean? all_interactions
    Boolean? only_singles
    String? est_utr_lens
    String? bc_chr_list
    String? refseq_dir
    String? targets_file
    String? single_counts
    String? rep_table
    Int? length
    String? shuffles
    String? servers
    Boolean? run_rna_up
    String? rna_up_cmd
    String? pad_seqs
    String? se_glen
    Int? max_segs
    Int? min_int
    Int? max_pv
    Int? min_odds_ratio
    String? linear_chromosome_list
    String reads_in
  }
  command <<<
    RILseq_significant_regions.py \
      ~{reads_in} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(total_rna) then ("--total_RNA " +  '"' + total_rna + '"') else ""} \
      ~{true="--total_reverse" false="" total_reverse} \
      ~{if defined(min_total_counts) then ("--min_total_counts " +  '"' + min_total_counts + '"') else ""} \
      ~{if defined(norm_percentile) then ("--norm_percentile " +  '"' + norm_percentile + '"') else ""} \
      ~{if defined(bc_dir) then ("--bc_dir " +  '"' + bc_dir + '"') else ""} \
      ~{true="--ribozero" false="" ribo_zero} \
      ~{if defined(rrna_list) then ("--rrna_list " +  '"' + rrna_list + '"') else ""} \
      ~{true="--all_interactions" false="" all_interactions} \
      ~{true="--only_singles" false="" only_singles} \
      ~{if defined(est_utr_lens) then ("--est_utr_lens " +  '"' + est_utr_lens + '"') else ""} \
      ~{if defined(bc_chr_list) then ("--BC_chrlist " +  '"' + bc_chr_list + '"') else ""} \
      ~{if defined(refseq_dir) then ("--refseq_dir " +  '"' + refseq_dir + '"') else ""} \
      ~{if defined(targets_file) then ("--targets_file " +  '"' + targets_file + '"') else ""} \
      ~{if defined(single_counts) then ("--single_counts " +  '"' + single_counts + '"') else ""} \
      ~{if defined(rep_table) then ("--rep_table " +  '"' + rep_table + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(shuffles) then ("--shuffles " +  '"' + shuffles + '"') else ""} \
      ~{if defined(servers) then ("--servers " +  '"' + servers + '"') else ""} \
      ~{true="--run_RNAup" false="" run_rna_up} \
      ~{if defined(rna_up_cmd) then ("--RNAup_cmd " +  '"' + rna_up_cmd + '"') else ""} \
      ~{if defined(pad_seqs) then ("--pad_seqs " +  '"' + pad_seqs + '"') else ""} \
      ~{if defined(se_glen) then ("--seglen " +  '"' + se_glen + '"') else ""} \
      ~{if defined(max_segs) then ("--maxsegs " +  '"' + max_segs + '"') else ""} \
      ~{if defined(min_int) then ("--min_int " +  '"' + min_int + '"') else ""} \
      ~{if defined(max_pv) then ("--max_pv " +  '"' + max_pv + '"') else ""} \
      ~{if defined(min_odds_ratio) then ("--min_odds_ratio " +  '"' + min_odds_ratio + '"') else ""} \
      ~{if defined(linear_chromosome_list) then ("--linear_chromosome_list " +  '"' + linear_chromosome_list + '"') else ""}
  >>>
  parameter_meta {
    genome: "genome fasta file (default: None)"
    total_rna: "Normalize in total RNA from these bam files. Enter a comma separated list of bam files. (default: None)"
    total_reverse: "Total library is the reverse strand. (default: False)"
    min_total_counts: "Minimal number of reads in the total library to assess normalization from. (default: 10)"
    norm_percentile: "Percentile of IP/total to use when evaluating normalization of odds ratio in total. The value IP/total is evaluated for every region with at least (--min_total_counts) reads and to avoid outliers the 99th percentile is taken as the normalization value meaning this is the highest amount of IP reads that can be obtained in this library given the amount of total RNA. (default: 0.99)"
    bc_dir: "BioCyc data dir, used to map the regions to genes. If not given only the regions will be reported (default: None)"
    ribo_zero: "Remove rRNA prior to the statistical analysis. (default: False)"
    rrna_list: "rRNA list of types for rRNA_prod param in read_genes_data(). this is a no spaces comma-seperated list. e.g. 'rRNA,rrna,RRNA' (default: rRNA,rrna,RRNA)"
    all_interactions: "Skip all statistical tests and report all the interactions. (default: False)"
    only_singles: "Return only the single interactions. This should be used with --all_interactions to count the number of single reads in the library. (default: False)"
    est_utr_lens: "Estimated UTRs lengths when there is not data. (default: 100)"
    bc_chr_list: "A comma separated dictionary of chromosome names from the bam file to EcoCyc names. See the names of chromosomes in bam file using samtools view -H foo.bam. (default: chr,COLI-K12)"
    refseq_dir: "RefSeq dir of organism to get the gene description from. (default: None)"
    targets_file: "A list of sRNA-mRNA interactions, should be in EcoCyc acc. (default: None)"
    single_counts: "A file with the counts of single fragments per gene. (default: None)"
    rep_table: "A table containing data on REP elements. This file was generated using SmartTables (e.g. this: http://ecocyc.org/group?id=biocyc14-8223-3640227683) (default: None)"
    length: "Length of sequence used for mapping. Used to determine the gene in the regions. (default: 25)"
    shuffles: "Shuffle the first sequence to compute an empirical p-value of the hybridization energy using RNAup. (default: 0)"
    servers: "A list of computers to run RNAup on (or number of CPUs) (default: None)"
    run_rna_up: "Run RNAup and compute the interactions predicted strength (default: False)"
    rna_up_cmd: "Executable of RNAup with its parameters (default: RNAup -Xp -w 25 -b -o)"
    pad_seqs: "When computing RNAup pad the interacting regions. (default: 50)"
    se_glen: "Length of minimal segment of interaction. (default: 100)"
    max_segs: "Maximal number of consecutive segments that will be treated as a region. (default: 5)"
    min_int: "Minimal number of interactions to report. (default: 5)"
    max_pv: "Maximal pvalue to report (after correction). (default: 0.05)"
    min_odds_ratio: "Minimal odds ratio to report (default: 1.0)"
    linear_chromosome_list: "A list of chromosomes/plasmids names that are linear and not cyclic.The name should be identical to the chromosome/plasmid name in the given genome fasta file. (default: )"
    reads_in: "An output file of map_chimeric_fragments.py with the chimeric fragments."
  }
}