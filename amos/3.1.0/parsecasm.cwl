class: CommandLineTool
id: parsecasm.cwl
inputs:
- id: no_fast_a
  doc: Do not create .fasta output
  type: boolean
  inputBinding:
    prefix: -nofasta
- id: just_fast_a
  doc: Only create .fasta output
  type: boolean
  inputBinding:
    prefix: -justfasta
- id: o
  doc: Output prefix
  type: string
  inputBinding:
    prefix: -o
- id: no_names
  doc: Uses Ids rather than trying to figure out seqnames
  type: boolean
  inputBinding:
    prefix: -nonames
outputs: []
cwlVersion: v1.1
baseCommand:
- parsecasm
