class: CommandLineTool
id: isONcorrect.cwl
inputs:
- id: fast_q
  doc: 'Path to input fastq file with reads (default: False)'
  type: string
  inputBinding:
    prefix: --fastq
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
  doc: 'Upper interval length (default: 14)'
  type: string
  inputBinding:
    prefix: --xmin
- id: xmax
  doc: 'Lower interval length (default: 80)'
  type: string
  inputBinding:
    prefix: --xmax
- id: t
  doc: 'Minimum fraction keeping substitution (default: 0.1)'
  type: string
  inputBinding:
    prefix: --T
- id: exact
  doc: 'Get exact solution for WIS for evary read (recalculating weights for each
    read (much slower but slightly more accuracy, not to be used for clusters with
    over ~500 reads) (default: False)'
  type: boolean
  inputBinding:
    prefix: --exact
- id: disable_numpy
  doc: 'Do not require numpy to be installed, but this version is about 1.5x slower
    than with numpy. (default: False)'
  type: boolean
  inputBinding:
    prefix: --disable_numpy
- id: max_seqs_to_spo_a
  doc: 'Maximum number of seqs to spoa (default: 200)'
  type: long
  inputBinding:
    prefix: --max_seqs_to_spoa
- id: max_seqs
  doc: 'Maximum number of seqs to correct at a time (in case of large clusters). (default:
    1000)'
  type: long
  inputBinding:
    prefix: --max_seqs
- id: exact_instance_limit
  doc: 'Activates slower exact mode for instance smaller than this limit (default:
    0)'
  type: string
  inputBinding:
    prefix: --exact_instance_limit
- id: set_w_dynamically
  doc: 'Set w = k + max(2*k, floor(cluster_size/1000)). (default: False)'
  type: boolean
  inputBinding:
    prefix: --set_w_dynamically
- id: verbose
  doc: 'Print various developer stats. (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: compression
  doc: 'Use homopolymenr compressed reads. (Deprecated, because we will have fewer
    minmimizer combinations to span regions in homopolymenr dense regions. Solution
    could be to adjust upper interval legnth dynamically to guarantee a certain number
    of spanning intervals. (default: False)'
  type: boolean
  inputBinding:
    prefix: --compression
- id: out_folder
  doc: 'A fasta file with transcripts that are shared between samples and have perfect
    illumina support. (default: None)'
  type: string
  inputBinding:
    prefix: --outfolder
outputs: []
cwlVersion: v1.1
baseCommand:
- isONcorrect
