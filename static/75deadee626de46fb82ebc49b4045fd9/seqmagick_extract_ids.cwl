class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/seqmagick_extract_ids.cwl
inputs:
- id: output_file
  doc: Destination file
  type: string
  inputBinding:
    prefix: --output-file
- id: input_format
  doc: Input format for sequence file
  type: string
  inputBinding:
    prefix: --input-format
- id: include_description
  doc: 'Include the sequence description in output [default: False]'
  type: boolean
  inputBinding:
    prefix: --include-description
- id: sequence_file
  doc: Sequence file
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- seqmagick
- extract-ids
