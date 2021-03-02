class: CommandLineTool
id: RILseq_significant_regions.py.cwl
inputs:
- id: in_genome
  doc: 'genome fasta file (default: None)'
  type: File?
  inputBinding:
    prefix: --genome
- id: in_total_rna
  doc: "Normalize in total RNA from these bam files. Enter a\ncomma separated list\
    \ of bam files. (default: None)"
  type: string?
  inputBinding:
    prefix: --total_RNA
- id: in_total_reverse
  doc: 'Total library is the reverse strand. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --total_reverse
- id: in_min_total_counts
  doc: "Minimal number of reads in the total library to assess\nnormalization from.\
    \ (default: 10)"
  type: long?
  inputBinding:
    prefix: --min_total_counts
- id: in_norm_percentile
  doc: "Percentile of IP/total to use when evaluating\nnormalization of odds ratio\
    \ in total. The value\nIP/total is evaluated for every region with at least\n\
    (--min_total_counts) reads and to avoid outliers the\n99th percentile is taken\
    \ as the normalization value\nmeaning this is the highest amount of IP reads that\n\
    can be obtained in this library given the amount of\ntotal RNA. (default: 0.99)"
  type: double?
  inputBinding:
    prefix: --norm_percentile
- id: in_bc_dir
  doc: "BioCyc data dir, used to map the regions to genes. If\nnot given only the\
    \ regions will be reported (default:\nNone)"
  type: string?
  inputBinding:
    prefix: --bc_dir
- id: in_ribo_zero
  doc: "Remove rRNA prior to the statistical analysis.\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --ribozero
- id: in_rrna_list
  doc: "rRNA list of types for rRNA_prod param in\nread_genes_data(). this is a no\
    \ spaces comma-seperated\nlist. e.g. 'rRNA,rrna,RRNA' (default: rRNA,rrna,RRNA)"
  type: string?
  inputBinding:
    prefix: --rrna_list
- id: in_all_interactions
  doc: "Skip all statistical tests and report all the\ninteractions. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --all_interactions
- id: in_only_singles
  doc: "Return only the single interactions. This should be\nused with --all_interactions\
    \ to count the number of\nsingle reads in the library. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --only_singles
- id: in_est_utr_lens
  doc: "Estimated UTRs lengths when there is not data.\n(default: 100)"
  type: long?
  inputBinding:
    prefix: --est_utr_lens
- id: in_bc_chr_list
  doc: "A comma separated dictionary of chromosome names from\nthe bam file to EcoCyc\
    \ names. See the names of\nchromosomes in bam file using samtools view -H\nfoo.bam.\
    \ (default: chr,COLI-K12)"
  type: File?
  inputBinding:
    prefix: --BC_chrlist
- id: in_refseq_dir
  doc: "RefSeq dir of organism to get the gene description\nfrom. (default: None)"
  type: string?
  inputBinding:
    prefix: --refseq_dir
- id: in_targets_file
  doc: "A list of sRNA-mRNA interactions, should be in EcoCyc\nacc. (default: None)"
  type: File?
  inputBinding:
    prefix: --targets_file
- id: in_single_counts
  doc: "A file with the counts of single fragments per gene.\n(default: None)"
  type: File?
  inputBinding:
    prefix: --single_counts
- id: in_rep_table
  doc: "A table containing data on REP elements. This file was\ngenerated using SmartTables\
    \ (e.g. this:\nhttp://ecocyc.org/group?id=biocyc14-8223-3640227683)\n(default:\
    \ None)"
  type: File?
  inputBinding:
    prefix: --rep_table
- id: in_length
  doc: "Length of sequence used for mapping. Used to determine\nthe gene in the regions.\
    \ (default: 25)"
  type: long?
  inputBinding:
    prefix: --length
- id: in_shuffles
  doc: "Shuffle the first sequence to compute an empirical\np-value of the hybridization\
    \ energy using RNAup.\n(default: 0)"
  type: long?
  inputBinding:
    prefix: --shuffles
- id: in_servers
  doc: "A list of computers to run RNAup on (or number of\nCPUs) (default: None)"
  type: long?
  inputBinding:
    prefix: --servers
- id: in_run_rna_up
  doc: "Run RNAup and compute the interactions predicted\nstrength (default: False)"
  type: boolean?
  inputBinding:
    prefix: --run_RNAup
- id: in_rna_up_cmd
  doc: "Executable of RNAup with its parameters (default:\nRNAup)"
  type: string?
  inputBinding:
    prefix: --RNAup_cmd
- id: in_pad_seqs
  doc: "When computing RNAup pad the interacting regions.\n(default: 50)"
  type: long?
  inputBinding:
    prefix: --pad_seqs
- id: in_se_glen
  doc: "Length of minimal segment of interaction. (default:\n100)"
  type: long?
  inputBinding:
    prefix: --seglen
- id: in_max_segs
  doc: "Maximal number of consecutive segments that will be\ntreated as a region.\
    \ (default: 5)"
  type: long?
  inputBinding:
    prefix: --maxsegs
- id: in_min_int
  doc: 'Minimal number of interactions to report. (default: 5)'
  type: long?
  inputBinding:
    prefix: --min_int
- id: in_max_pv
  doc: "Maximal pvalue to report (after correction). (default:\n0.05)"
  type: long?
  inputBinding:
    prefix: --max_pv
- id: in_min_odds_ratio
  doc: 'Minimal odds ratio to report (default: 1.0)'
  type: long?
  inputBinding:
    prefix: --min_odds_ratio
- id: in_linear_chromosome_list
  doc: "A list of chromosomes/plasmids names that are linear\nand not cyclic.The name\
    \ should be identical to the\nchromosome/plasmid name in the given genome fasta\n\
    file. (default: )\n"
  type: File?
  inputBinding:
    prefix: --linear_chromosome_list
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rilseq:0.81--py_0
cwlVersion: v1.1
baseCommand:
- RILseq_significant_regions.py
