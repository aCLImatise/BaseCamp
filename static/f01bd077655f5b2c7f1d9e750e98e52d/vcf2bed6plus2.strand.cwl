class: CommandLineTool
id: vcf2bed6plus2.strand.pl.cwl
inputs:
- id: perl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: vcf2bed6plus2strandpl
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: input_file_name
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: cg
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf2bed6plus2.strand.pl
