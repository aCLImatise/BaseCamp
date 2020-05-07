class: CommandLineTool
id: dehomopolymerate.cwl
inputs:
- id: v
  doc: Print version and exit
  type: boolean
  inputBinding:
    prefix: -v
- id: q
  doc: Quiet mode; not non-error output
  type: boolean
  inputBinding:
    prefix: -q
- id: f
  doc: Output FASTA not FASTQ
  type: boolean
  inputBinding:
    prefix: -f
- id: w
  doc: Output RAW one line per sequence
  type: boolean
  inputBinding:
    prefix: -w
- id: l
  doc: Discard output sequences shorter then L bp
  type: string
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- dehomopolymerate
