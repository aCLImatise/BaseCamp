class: CommandLineTool
id: translateDNA2AA_FASTA.cwl
inputs:
- id: translate
  doc: 'Input File:  -h'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- translateDNA2AA-FASTA
