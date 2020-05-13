class: CommandLineTool
id: any2fasta.cwl
inputs:
- id: v
  doc: Print version and exit
  type: boolean
  inputBinding:
    prefix: -v
- id: q
  doc: No output while running, only errors
  type: boolean
  inputBinding:
    prefix: -q
- id: n
  doc: Replace ambiguous IUPAC letters with 'N'
  type: boolean
  inputBinding:
    prefix: -n
- id: l
  doc: Lowercase the sequence
  type: boolean
  inputBinding:
    prefix: -l
- id: u
  doc: Uppercase the sequence
  type: boolean
  inputBinding:
    prefix: -u
outputs: []
cwlVersion: v1.1
baseCommand:
- any2fasta
