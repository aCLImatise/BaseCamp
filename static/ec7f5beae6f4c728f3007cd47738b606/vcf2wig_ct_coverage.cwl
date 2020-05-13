class: CommandLineTool
id: vcf2wig_ct_coverage.pl.cwl
inputs:
- id: perl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: vcf2wig_ct_coverage_pl
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
- vcf2wig_ct_coverage.pl
