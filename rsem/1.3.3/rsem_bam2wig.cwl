class: CommandLineTool
id: rsem_bam2wig.cwl
inputs:
- id: sorted_alignment_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: wig_output
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: wiggle_name
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: no_fractional_weight
  doc: ''
  type: boolean
  inputBinding:
    prefix: --no-fractional-weight
outputs: []
cwlVersion: v1.1
baseCommand:
- rsem-bam2wig
