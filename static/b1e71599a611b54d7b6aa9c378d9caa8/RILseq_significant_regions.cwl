class: CommandLineTool
id: RILseq_significant_regions.py.cwl
inputs:
- id: reads_in
  doc: An output file of map_chimeric_fragments.py with the chimeric fragments.
  type: string
  inputBinding:
    position: 0
- id: genome
  doc: 'genome fasta file (default: None)'
  type: string
  inputBinding:
    prefix: --genome
- id: total_rna
  doc: 'Normalize in total RNA from these bam files. Enter a comma separated list
    of bam files. (default: None)'
  type: string
  inputBinding:
    prefix: --total_RNA
- id: total_reverse
  doc: 'Total library is the reverse strand. (default: False)'
  type: boolean
  inputBinding:
    prefix: --total_reverse
- id: min_total_counts
  doc: 'Minimal number of reads in the total library to assess normalization from.
    (default: 10)'
  type: long
  inputBinding:
    prefix: --min_total_counts
- id: norm_percentile
  doc: 'Percentile of IP/total to use when evaluating normalization of odds ratio
    in total. The value IP/total is evaluated for every region with at least (--min_total_counts)
    reads and to avoid outliers the 99th percentile is taken as the normalization
    value meaning this is the highest amount of IP reads that can be obtained in this
    library given the amount of total RNA. (default: 0.99)'
  type: string
  inputBinding:
    prefix: --norm_percentile
- id: bc_dir
  doc: 'BioCyc data dir, used to map the regions to genes. If not given only the regions
    will be reported (default: None)'
  type: string
  inputBinding:
    prefix: --bc_dir
- id: ribo_zero
  doc: 'Remove rRNA prior to the statistical analysis. (default: False)'
  type: boolean
  inputBinding:
    prefix: --ribozero
- id: rrna_list
  doc: "rRNA list of types for rRNA_prod param in read_genes_data(). this is a no\
    \ spaces comma-seperated list. e.g. 'rRNA,rrna,RRNA' (default: rRNA,rrna,RRNA)"
  type: string
  inputBinding:
    prefix: --rrna_list
- id: all_interactions
  doc: 'Skip all statistical tests and report all the interactions. (default: False)'
  type: boolean
  inputBinding:
    prefix: --all_interactions
- id: only_singles
  doc: 'Return only the single interactions. This should be used with --all_interactions
    to count the number of single reads in the library. (default: False)'
  type: boolean
  inputBinding:
    prefix: --only_singles
- id: est_utr_lens
  doc: 'Estimated UTRs lengths when there is not data. (default: 100)'
  type: string
  inputBinding:
    prefix: --est_utr_lens
- id: bc_chr_list
  doc: 'A comma separated dictionary of chromosome names from the bam file to EcoCyc
    names. See the names of chromosomes in bam file using samtools view -H foo.bam.
    (default: chr,COLI-K12)'
  type: string
  inputBinding:
    prefix: --BC_chrlist
- id: refseq_dir
  doc: 'RefSeq dir of organism to get the gene description from. (default: None)'
  type: string
  inputBinding:
    prefix: --refseq_dir
- id: targets_file
  doc: 'A list of sRNA-mRNA interactions, should be in EcoCyc acc. (default: None)'
  type: string
  inputBinding:
    prefix: --targets_file
- id: single_counts
  doc: 'A file with the counts of single fragments per gene. (default: None)'
  type: string
  inputBinding:
    prefix: --single_counts
- id: rep_table
  doc: 'A table containing data on REP elements. This file was generated using SmartTables
    (e.g. this: http://ecocyc.org/group?id=biocyc14-8223-3640227683) (default: None)'
  type: string
  inputBinding:
    prefix: --rep_table
- id: length
  doc: 'Length of sequence used for mapping. Used to determine the gene in the regions.
    (default: 25)'
  type: long
  inputBinding:
    prefix: --length
- id: shuffles
  doc: 'Shuffle the first sequence to compute an empirical p-value of the hybridization
    energy using RNAup. (default: 0)'
  type: string
  inputBinding:
    prefix: --shuffles
- id: servers
  doc: 'A list of computers to run RNAup on (or number of CPUs) (default: None)'
  type: string
  inputBinding:
    prefix: --servers
- id: run_rna_up
  doc: 'Run RNAup and compute the interactions predicted strength (default: False)'
  type: boolean
  inputBinding:
    prefix: --run_RNAup
- id: rna_up_cmd
  doc: 'Executable of RNAup with its parameters (default: RNAup -Xp -w 25 -b -o)'
  type: string
  inputBinding:
    prefix: --RNAup_cmd
- id: pad_seqs
  doc: 'When computing RNAup pad the interacting regions. (default: 50)'
  type: string
  inputBinding:
    prefix: --pad_seqs
- id: se_glen
  doc: 'Length of minimal segment of interaction. (default: 100)'
  type: string
  inputBinding:
    prefix: --seglen
- id: max_segs
  doc: 'Maximal number of consecutive segments that will be treated as a region. (default:
    5)'
  type: long
  inputBinding:
    prefix: --maxsegs
- id: min_int
  doc: 'Minimal number of interactions to report. (default: 5)'
  type: long
  inputBinding:
    prefix: --min_int
- id: max_pv
  doc: 'Maximal pvalue to report (after correction). (default: 0.05)'
  type: long
  inputBinding:
    prefix: --max_pv
- id: min_odds_ratio
  doc: 'Minimal odds ratio to report (default: 1.0)'
  type: long
  inputBinding:
    prefix: --min_odds_ratio
- id: linear_chromosome_list
  doc: 'A list of chromosomes/plasmids names that are linear and not cyclic.The name
    should be identical to the chromosome/plasmid name in the given genome fasta file.
    (default: )'
  type: string
  inputBinding:
    prefix: --linear_chromosome_list
outputs: []
cwlVersion: v1.1
baseCommand:
- RILseq_significant_regions.py
