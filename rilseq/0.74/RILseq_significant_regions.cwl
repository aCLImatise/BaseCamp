#!/usr/bin/env cwl-runner

baseCommand:
- RILseq_significant_regions.py
class: CommandLineTool
cwlVersion: v1.0
id: rilseq_significant_regions.py
inputs:
- doc: An output file of map_chimeric_fragments.py with the chimeric fragments.
  id: reads_in
  inputBinding:
    position: 0
  type: string
- doc: 'genome fasta file (default: None)'
  id: genome
  inputBinding:
    prefix: --genome
  type: string
- doc: 'Normalize in total RNA from these bam files. Enter a comma separated list
    of bam files. (default: None)'
  id: total_rna
  inputBinding:
    prefix: --total_RNA
  type: string
- doc: 'Total library is the reverse strand. (default: False)'
  id: total_reverse
  inputBinding:
    prefix: --total_reverse
  type: boolean
- doc: 'Minimal number of reads in the total library to assess normalization from.
    (default: 10)'
  id: min_total_counts
  inputBinding:
    prefix: --min_total_counts
  type: long
- doc: 'Percentile of IP/total to use when evaluating normalization of odds ratio
    in total. The value IP/total is evaluated for every region with at least (--min_total_counts)
    reads and to avoid outliers the 99th percentile is taken as the normalization
    value meaning this is the highest amount of IP reads that can be obtained in this
    library given the amount of total RNA. (default: 0.99)'
  id: norm_percentile
  inputBinding:
    prefix: --norm_percentile
  type: string
- doc: 'BioCyc data dir, used to map the regions to genes. If not given only the regions
    will be reported (default: None)'
  id: bc_dir
  inputBinding:
    prefix: --bc_dir
  type: string
- doc: 'Remove rRNA prior to the statistical analysis. (default: False)'
  id: ribo_zero
  inputBinding:
    prefix: --ribozero
  type: boolean
- doc: "rRNA list of types for rRNA_prod param in read_genes_data(). this is a no\
    \ spaces comma-seperated list. e.g. 'rRNA,rrna,RRNA' (default: rRNA,rrna,RRNA)"
  id: rrna_list
  inputBinding:
    prefix: --rrna_list
  type: string
- doc: 'Skip all statistical tests and report all the interactions. (default: False)'
  id: all_interactions
  inputBinding:
    prefix: --all_interactions
  type: boolean
- doc: 'Return only the single interactions. This should be used with --all_interactions
    to count the number of single reads in the library. (default: False)'
  id: only_singles
  inputBinding:
    prefix: --only_singles
  type: boolean
- doc: 'Estimated UTRs lengths when there is not data. (default: 100)'
  id: est_utr_lens
  inputBinding:
    prefix: --est_utr_lens
  type: string
- doc: 'A comma separated dictionary of chromosome names from the bam file to EcoCyc
    names. See the names of chromosomes in bam file using samtools view -H foo.bam.
    (default: chr,COLI-K12)'
  id: bc_chr_list
  inputBinding:
    prefix: --BC_chrlist
  type: string
- doc: 'RefSeq dir of organism to get the gene description from. (default: None)'
  id: refseq_dir
  inputBinding:
    prefix: --refseq_dir
  type: string
- doc: 'A list of sRNA-mRNA interactions, should be in EcoCyc acc. (default: None)'
  id: targets_file
  inputBinding:
    prefix: --targets_file
  type: string
- doc: 'A file with the counts of single fragments per gene. (default: None)'
  id: single_counts
  inputBinding:
    prefix: --single_counts
  type: string
- doc: 'A table containing data on REP elements. This file was generated using SmartTables
    (e.g. this: http://ecocyc.org/group?id=biocyc14-8223-3640227683) (default: None)'
  id: rep_table
  inputBinding:
    prefix: --rep_table
  type: string
- doc: 'Length of sequence used for mapping. Used to determine the gene in the regions.
    (default: 25)'
  id: length
  inputBinding:
    prefix: --length
  type: long
- doc: 'Shuffle the first sequence to compute an empirical p-value of the hybridization
    energy using RNAup. (default: 0)'
  id: shuffles
  inputBinding:
    prefix: --shuffles
  type: string
- doc: 'A list of computers to run RNAup on (or number of CPUs) (default: None)'
  id: servers
  inputBinding:
    prefix: --servers
  type: string
- doc: 'Run RNAup and compute the interactions predicted strength (default: False)'
  id: run_rna_up
  inputBinding:
    prefix: --run_RNAup
  type: boolean
- doc: 'Executable of RNAup with its parameters (default: RNAup -Xp -w 25 -b -o)'
  id: rna_up_cmd
  inputBinding:
    prefix: --RNAup_cmd
  type: string
- doc: 'When computing RNAup pad the interacting regions. (default: 50)'
  id: pad_seqs
  inputBinding:
    prefix: --pad_seqs
  type: string
- doc: 'Length of minimal segment of interaction. (default: 100)'
  id: se_glen
  inputBinding:
    prefix: --seglen
  type: string
- doc: 'Maximal number of consecutive segments that will be treated as a region. (default:
    5)'
  id: max_segs
  inputBinding:
    prefix: --maxsegs
  type: long
- doc: 'Minimal number of interactions to report. (default: 5)'
  id: min_int
  inputBinding:
    prefix: --min_int
  type: long
- doc: 'Maximal pvalue to report (after correction). (default: 0.05)'
  id: max_pv
  inputBinding:
    prefix: --max_pv
  type: long
- doc: 'Minimal odds ratio to report (default: 1.0)'
  id: min_odds_ratio
  inputBinding:
    prefix: --min_odds_ratio
  type: long
- doc: 'A list of chromosomes/plasmids names that are linear and not cyclic.The name
    should be identical to the chromosome/plasmid name in the given genome fasta file.
    (default: )'
  id: linear_chromosome_list
  inputBinding:
    prefix: --linear_chromosome_list
  type: string
