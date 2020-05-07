class: CommandLineTool
id: sam_to_bam.cwl
inputs:
- id: convert
  doc: Convert given SAM file to indexed, sorted BAM file with headers. Takes SAM
    filename and output directory.
  type: string
  inputBinding:
    prefix: --convert
- id: ref
  doc: References file to use to get chromosome lengths.
  type: string
  inputBinding:
    prefix: --ref
outputs: []
cwlVersion: v1.1
baseCommand:
- sam_to_bam
