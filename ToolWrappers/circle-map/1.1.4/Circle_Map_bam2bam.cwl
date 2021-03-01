class: CommandLineTool
id: Circle_Map_bam2bam.cwl
inputs:
- id: in_input_bam_file
  doc: 'Input: bam file containing the reads extracted by'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_fast_a
  doc: 'Input: Reference genome fasta file'
  type: boolean?
  inputBinding:
    prefix: -fasta
- id: in_output
  doc: Output BAM name
  type: boolean?
  inputBinding:
    prefix: --output
- id: in_n_hits
  doc: 'Number of realignment attempts. Default: 10'
  type: boolean?
  inputBinding:
    prefix: --nhits
- id: in_cut_off
  doc: "Probability cut-off for considering a soft-clipped as\nrealigned: Default:\
    \ 0.99"
  type: boolean?
  inputBinding:
    prefix: --cut_off
- id: in_min_sc
  doc: "Minimum soft-clipped length to attempt the\nrealignment. Default: 8"
  type: boolean?
  inputBinding:
    prefix: --min_sc
- id: in_gap_open
  doc: "Gap open penalty in the position specific scoring\nmatrix. Default: 5"
  type: boolean?
  inputBinding:
    prefix: --gap_open
- id: in_gap_ext
  doc: "Gap extension penalty in the position specific scoring\nmatrix. Default: 1"
  type: boolean?
  inputBinding:
    prefix: --gap_ext
- id: in_mapq
  doc: "Minimum mapping quality allowed in the supplementary\nalignments. Default:\
    \ 20"
  type: boolean?
  inputBinding:
    prefix: --mapq
- id: in_edit_distance_fraction
  doc: "Maximum edit distance fraction allowed in the first\nrealignment. Default\
    \ (0.05)"
  type: boolean?
  inputBinding:
    prefix: --edit_distance-fraction
- id: in_split_quality
  doc: "Minium split score to output an interval. Default\n(0.0)"
  type: boolean?
  inputBinding:
    prefix: --split_quality
- id: in_remap_splits
  doc: Remap probabilistacally bwa-mem split reads
  type: boolean?
  inputBinding:
    prefix: --remap_splits
- id: in_insert_mapq
  doc: "Mapq cutoff for stimating the insert size\ndistribution. Default 60"
  type: boolean?
  inputBinding:
    prefix: --insert_mapq
- id: in_std
  doc: "Standard deviations of the insert size to extend the\nintervals. Default 5"
  type: boolean?
  inputBinding:
    prefix: --std
- id: in_sample_size
  doc: "Number of concordant reads (R2F1) to use for\nestimating the insert size distribution.\
    \ Default\n100000"
  type: boolean?
  inputBinding:
    prefix: --sample_size
- id: in_interval_probability
  doc: "Skip edges of the graph with a probability below the\nthreshold. Default:\
    \ 0.01"
  type: boolean?
  inputBinding:
    prefix: --interval_probability
- id: in_clustering_dist
  doc: "Cluster reads that are K nucleotides appart in the\nsame node. Default: 500"
  type: boolean?
  inputBinding:
    prefix: --clustering_dist
- id: in_only_discordant_s
  doc: Use only discordant reads to build the graph
  type: boolean?
  inputBinding:
    prefix: --only_discordants
- id: in_threads
  doc: Number of threads to use.Default 1
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_directory
  doc: Working directory, default is the working directory
  type: boolean?
  inputBinding:
    prefix: --directory
- id: in_verbose
  doc: Verbose level, 1=error,2=warning, 3=message
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_read_extractor
  doc: '-qbam                 Input: query name sorted bam file'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- Circle-Map
- bam2bam
