class: CommandLineTool
id: ../../../common_errors_from_bam.cwl
inputs:
- id: in_output_prefix
  doc: "Prefix for outputs. (default: common_errors)\n"
  type: string
  inputBinding:
    prefix: --output_prefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- common_errors_from_bam
