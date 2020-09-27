class: CommandLineTool
id: Circle_Map_bam2bam.cwl
inputs:
- id: in_input_bam_file
  doc: 'Input: bam file containing the reads extracted by'
  type: boolean
  inputBinding:
    prefix: -i
- id: in_fast_a
  doc: 'Input: Reference genome fasta file'
  type: boolean
  inputBinding:
    prefix: -fasta
- id: in__output_name
  doc: ', --output         Output BAM name'
  type: boolean
  inputBinding:
    prefix: -o
- id: in__nhits_number
  doc: ', --nhits          Number of realignment attempts. Default: 10'
  type: boolean
  inputBinding:
    prefix: -n
- id: in__cutoff_probability
  doc: ", --cut_off        Probability cut-off for considering a soft-clipped as\n\
    realigned: Default: 0.99"
  type: boolean
  inputBinding:
    prefix: -p
- id: in__minsc_minimum
  doc: ", --min_sc         Minimum soft-clipped length to attempt the\nrealignment.\
    \ Default: 8"
  type: boolean
  inputBinding:
    prefix: -m
- id: in__gapopen_gap
  doc: ", --gap_open       Gap open penalty in the position specific scoring\nmatrix.\
    \ Default: 5"
  type: boolean
  inputBinding:
    prefix: -g
- id: in__gapext_penalty
  doc: ", --gap_ext        Gap extension penalty in the position specific scoring\n\
    matrix. Default: 1"
  type: boolean
  inputBinding:
    prefix: -e
- id: in__mapq_minimum
  doc: ", --mapq           Minimum mapping quality allowed in the supplementary\n\
    alignments. Default: 20"
  type: boolean
  inputBinding:
    prefix: -q
- id: in__editdistancefractionmaximum_edit
  doc: ", --edit_distance-fraction\nMaximum edit distance fraction allowed in the\
    \ first\nrealignment. Default (0.05)"
  type: boolean
  inputBinding:
    prefix: -d
- id: in__splitqualityminium_split
  doc: ", --split_quality\nMinium split score to output an interval. Default\n(0.0)"
  type: boolean
  inputBinding:
    prefix: -Q
- id: in_remap_splits
  doc: Remap probabilistacally bwa-mem split reads
  type: boolean
  inputBinding:
    prefix: --remap_splits
- id: in_iq
  doc: ", --insert_mapq   Mapq cutoff for stimating the insert size\ndistribution.\
    \ Default 60"
  type: boolean
  inputBinding:
    prefix: -iq
- id: in_sd
  doc: ", --std           Standard deviations of the insert size to extend the\nintervals.\
    \ Default 5"
  type: boolean
  inputBinding:
    prefix: -sd
- id: in__samplesize_number
  doc: ", --sample_size    Number of concordant reads (R2F1) to use for\nestimating\
    \ the insert size distribution. Default\n100000"
  type: boolean
  inputBinding:
    prefix: -s
- id: in__intervalprobabilityskip_edges
  doc: ", --interval_probability\nSkip edges of the graph with a probability below\
    \ the\nthreshold. Default: 0.01"
  type: boolean
  inputBinding:
    prefix: -P
- id: in__clusteringdistcluster_reads
  doc: ", --clustering_dist\nCluster reads that are K nucleotides appart in the\n\
    same node. Default: 500"
  type: boolean
  inputBinding:
    prefix: -K
- id: in_only_discordant_s
  doc: Use only discordant reads to build the graph
  type: boolean
  inputBinding:
    prefix: --only_discordants
- id: in__threads_number
  doc: ', --threads        Number of threads to use.Default 1'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_dir
  doc: ', --directory    Working directory, default is the working directory'
  type: boolean
  inputBinding:
    prefix: -dir
- id: in__verbose_verbose
  doc: ', --verbose        Verbose level, 1=error,2=warning, 3=message'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_read_extractor
  doc: '-qbam                 Input: query name sorted bam file'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- Circle-Map
- bam2bam
