class: CommandLineTool
id: bowtie2sam.pl.cwl
inputs:
- id: aln_bowtie
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bowtie2sam.pl
