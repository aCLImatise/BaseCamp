class: CommandLineTool
id: rename_filter_fastq.cwl
inputs:
- id: in_output
  doc: Output file (stdout)
  type: File
  inputBinding:
    prefix: --output
- id: in_base_quality
  doc: Lowest valide quality score (#)
  type: string
  inputBinding:
    prefix: --base-quality
- id: in_args_t
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_library
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file (stdout)
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- rename_filter_fastq
