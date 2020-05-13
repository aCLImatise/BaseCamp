class: CommandLineTool
id: shorah_shotgun.cwl
inputs:
- id: alpha
  doc: alpha in dpm sampling
  type: double
  inputBinding:
    prefix: --alpha
- id: r
  doc: :start-stop, --region chrm:start-stop region in format 'chr:start-stop', e.g.
    'chrm:1000-3000'
  type: string
  inputBinding:
    prefix: -r
- id: seed
  doc: set seed for reproducible results
  type: long
  inputBinding:
    prefix: --seed
- id: max_cov
  doc: approximate max coverage allowed
  type: long
  inputBinding:
    prefix: --maxcov
- id: sigma
  doc: sigma value to use when calling SNVs
  type: double
  inputBinding:
    prefix: --sigma
- id: ignore_indels
  doc: ignore SNVs adjacent to insertions/deletions (legacy behaviour of 'fil', ignore
    this option if you don't understand)
  type: boolean
  inputBinding:
    prefix: --ignore_indels
- id: of
  doc: '[{csv,vcf} ...], --out_format {csv,vcf} [{csv,vcf} ...] output format of called
    SNVs'
  type: string
  inputBinding:
    prefix: -of
- id: win_coverage
  doc: coverage threshold. Omit windows with low coverage
  type: long
  inputBinding:
    prefix: --win_coverage
- id: window_size
  doc: window size
  type: long
  inputBinding:
    prefix: --windowsize
- id: win_shifts
  doc: number of window shifts
  type: long
  inputBinding:
    prefix: --winshifts
- id: keep_files
  doc: keep all intermediate files
  type: boolean
  inputBinding:
    prefix: --keep_files
- id: bam
  doc: sorted bam format alignment file
  type: string
  inputBinding:
    prefix: --bam
- id: fast_a
  doc: reference genome in fasta format
  type: string
  inputBinding:
    prefix: --fasta
outputs: []
cwlVersion: v1.1
baseCommand:
- shorah
- shotgun
