class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/clean.cwl
inputs:
- id: assembly
  doc: filename of assembly in FASTA format
  type: string
  inputBinding:
    prefix: --assembly
- id: csv
  doc: Tapestry CSV output
  type: string
  inputBinding:
    prefix: --csv
- id: output
  doc: filename of output contigs, default filtered_assembly.fasta
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- clean
