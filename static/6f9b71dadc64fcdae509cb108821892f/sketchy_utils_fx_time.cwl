class: CommandLineTool
id: sketchy_utils_fx_time.cwl
inputs:
- id: fast_q
  doc: 'Path to Fast{a,q} input file used in evaluation NOTE: This argument is mutually
    exclusive with  arguments: [index].  [required]'
  type: File
  inputBinding:
    prefix: --fastq
- id: index
  doc: 'Path to input file read index from `sketchy utils fx- sort` NOTE: This argument
    is mutually exclusive with arguments: [fastx].'
  type: File
  inputBinding:
    prefix: --index
- id: evaluation
  doc: Path to evaluation file containing predictions (data.tsv)
  type: File
  inputBinding:
    prefix: --evaluation
- id: prefix
  doc: 'Output prefix for time data: {prefix}.time.tsv [skecthy]'
  type: string
  inputBinding:
    prefix: --prefix
- id: delta
  doc: "Compute time delta between 'first' read or start time of run !! GMT !! in\
    \ format: '20/11/20 16:20:00' [first]"
  type: string
  inputBinding:
    prefix: --delta
outputs: []
cwlVersion: v1.1
baseCommand:
- sketchy
- utils
- fx-time
