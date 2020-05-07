class: CommandLineTool
id: msaconverter.cwl
inputs:
- id: i
  doc: input msa file
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: output msa file
  type: string
  inputBinding:
    prefix: -o
- id: p
  doc: input msa format [fasta]
  type: string
  inputBinding:
    prefix: -p
- id: q
  doc: input msa format [phylip-relaxed]
  type: string
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- msaconverter
