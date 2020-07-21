class: CommandLineTool
id: ../../../min_coverage.cwl
inputs:
- id: name_hxb_
  doc: Name of target contig, e.g. HXB2:2253-2256
  type: string
  inputBinding:
    prefix: -t
- id: input_sambam_file
  doc: Input SAM/BAM file
  type: string
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- min_coverage
