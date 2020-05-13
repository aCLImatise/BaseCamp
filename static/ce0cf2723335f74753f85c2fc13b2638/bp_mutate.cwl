class: CommandLineTool
id: bp_mutate.pl.cwl
inputs:
- id: percent
  doc: mutagenized
  type: string
  inputBinding:
    prefix: --percent
- id: number
  doc: Number of mutant sequences created
  type: boolean
  inputBinding:
    prefix: --number
- id: output
  doc: Output file (optional)
  type: boolean
  inputBinding:
    prefix: --output
- id: format
  doc: 'Output format (default: fasta)'
  type: boolean
  inputBinding:
    prefix: --format
- id: input
  doc: Input file
  type: boolean
  inputBinding:
    prefix: --input
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_mutate.pl
