class: CommandLineTool
id: ../../../vcf2bed6plus2.strand.pl.cwl
inputs:
- id: input_file_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: cg
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf2bed6plus2.strand.pl
