class: CommandLineTool
id: shorah_shotgun.cwl
inputs:
- id: in_alpha
  doc: alpha in dpm sampling
  type: double
  inputBinding:
    prefix: --alpha
- id: in_startstop__region
  doc: ":start-stop, --region chrm:start-stop\nregion in format 'chr:start-stop',\
    \ e.g.\n'chrm:1000-3000'"
  type: long
  inputBinding:
    prefix: -r
- id: in_seed
  doc: set seed for reproducible results
  type: long
  inputBinding:
    prefix: --seed
- id: in_max_cov
  doc: approximate max coverage allowed
  type: long
  inputBinding:
    prefix: --maxcov
- id: in_sigma
  doc: sigma value to use when calling SNVs
  type: double
  inputBinding:
    prefix: --sigma
- id: in_ignore_indels
  doc: "ignore SNVs adjacent to insertions/deletions (legacy\nbehaviour of 'fil',\
    \ ignore this option if you don't\nunderstand)"
  type: boolean
  inputBinding:
    prefix: --ignore_indels
- id: in_of
  doc: "[{csv,vcf} ...], --out_format {csv,vcf} [{csv,vcf} ...]\noutput format of\
    \ called SNVs"
  type: string
  inputBinding:
    prefix: -of
- id: in_win_coverage
  doc: coverage threshold. Omit windows with low coverage
  type: long
  inputBinding:
    prefix: --win_coverage
- id: in_window_size
  doc: window size
  type: long
  inputBinding:
    prefix: --windowsize
- id: in_win_shifts
  doc: number of window shifts
  type: long
  inputBinding:
    prefix: --winshifts
- id: in_keep_files
  doc: keep all intermediate files
  type: boolean
  inputBinding:
    prefix: --keep_files
- id: in_bam
  doc: sorted bam format alignment file
  type: File
  inputBinding:
    prefix: --bam
- id: in_fast_a
  doc: reference genome in fasta format
  type: string
  inputBinding:
    prefix: --fasta
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: in_shor_ah
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_subcommand
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_shotgun
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- shorah
- shotgun
