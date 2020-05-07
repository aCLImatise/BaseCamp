class: CommandLineTool
id: run_isoncorrect.cwl
inputs:
- id: fast_q_folder
  doc: 'Path to input fastq folder with reads in clusters (default: False)'
  type: string
  inputBinding:
    prefix: --fastq_folder
- id: t
  doc: 'Number of cores allocated for clustering (default: 8)'
  type: string
  inputBinding:
    prefix: --t
- id: k
  doc: 'Kmer size (default: 9)'
  type: string
  inputBinding:
    prefix: --k
- id: w
  doc: 'Window size (default: 10)'
  type: string
  inputBinding:
    prefix: --w
- id: xmin
  doc: 'Lower interval length (default: 14)'
  type: string
  inputBinding:
    prefix: --xmin
- id: xmax
  doc: 'Upper interval length (default: 80)'
  type: string
  inputBinding:
    prefix: --xmax
- id: t
  doc: 'Minimum fraction keeping substitution (default: 0.1)'
  type: string
  inputBinding:
    prefix: --T
- id: exact_instance_limit
  doc: 'Do exact correction for clusters under this threshold (default: 50)'
  type: string
  inputBinding:
    prefix: --exact_instance_limit
- id: keep_old
  doc: 'Do not recompute previous results if corrected_reads.fq is found and has the
    smae number of reads as input file (i.e., is complete). (default: False)'
  type: boolean
  inputBinding:
    prefix: --keep_old
- id: set_w_dynamically
  doc: 'Set w = k + max(2*k, floor(cluster_size/1000)). (default: False)'
  type: boolean
  inputBinding:
    prefix: --set_w_dynamically
- id: split_mod
  doc: 'Splits cluster ids in n (default=1) partitions by computing residual of cluster_id
    divided by n. this parameter needs to be combined with --residual to take effect.
    (default: 1)'
  type: string
  inputBinding:
    prefix: --split_mod
- id: residual
  doc: 'Run isONcorrect on cluster ids with residual (default 0) of cluster_id divided
    by --split_mod. (default: 0)'
  type: string
  inputBinding:
    prefix: --residual
- id: out_folder
  doc: 'A fasta file with transcripts that are shared between samples and have perfect
    illumina support. (default: None)'
  type: string
  inputBinding:
    prefix: --outfolder
outputs: []
cwlVersion: v1.1
baseCommand:
- run_isoncorrect
