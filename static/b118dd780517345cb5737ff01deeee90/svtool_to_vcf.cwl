class: CommandLineTool
id: svtool_to_vcf.py.cwl
inputs:
- id: input
  doc: 'SV tool output file (default: None)'
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: 'Output VCF to create (default: None)'
  type: string
  inputBinding:
    prefix: --output
- id: tool
  doc: 'Tool name (default: BreakDancer)'
  type: string
  inputBinding:
    prefix: --tool
- id: sample
  doc: 'Sample name (default: None)'
  type: string
  inputBinding:
    prefix: --sample
- id: reference
  doc: 'Reference FASTA (default: None)'
  type: string
  inputBinding:
    prefix: --reference
- id: sort
  doc: 'Sort the VCF records before writing (default: False)'
  type: boolean
  inputBinding:
    prefix: --sort
- id: index
  doc: 'Tabix compress and index the output VCF (default: False)'
  type: boolean
  inputBinding:
    prefix: --index
outputs: []
cwlVersion: v1.1
baseCommand:
- svtool_to_vcf.py
