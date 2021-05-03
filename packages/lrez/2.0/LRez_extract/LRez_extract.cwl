class: CommandLineTool
id: LRez_extract.cwl
inputs:
- id: in_bam
  doc: BAM file to extract barcodes from
  type: boolean?
  inputBinding:
    prefix: --bam
- id: in_region
  doc: Region of interest in format chromosome:startPosition-endPosition
  type: boolean?
  inputBinding:
    prefix: --region
- id: in_all
  doc: Extract all barcodes
  type: boolean?
  inputBinding:
    prefix: --all
- id: in_output
  doc: 'File where to output the extracted barcodes (optional, default: stdout)'
  type: File?
  inputBinding:
    prefix: --output
- id: in_user_x
  doc: 'Consider barcodes that only appear in the RX tag (optional, default: false)'
  type: boolean?
  inputBinding:
    prefix: --userx
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'File where to output the extracted barcodes (optional, default: stdout)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/lrez:2.0--hc90279e_0
cwlVersion: v1.1
baseCommand:
- LRez
- extract
