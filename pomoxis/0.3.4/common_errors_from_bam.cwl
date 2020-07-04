class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/common_errors_from_bam.cwl
inputs:
- id: output_prefix
  doc: 'Prefix for outputs. (default: common_errors)'
  type: string
  inputBinding:
    prefix: --output_prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- common_errors_from_bam
