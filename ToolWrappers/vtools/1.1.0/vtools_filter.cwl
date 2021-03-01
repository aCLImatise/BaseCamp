class: CommandLineTool
id: vtools_filter.cwl
inputs:
- id: in_input
  doc: Path to input VCF file  [required]
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: "Path to output (filtered) VCF file\n[required]"
  type: File?
  inputBinding:
    prefix: --output
- id: in_trash
  doc: Path to trash VCF file  [required]
  type: File?
  inputBinding:
    prefix: --trash
- id: in_params_file
  doc: Path to filter params json  [required]
  type: File?
  inputBinding:
    prefix: --params-file
- id: in_index_sample
  doc: Name of index sample  [required]
  type: string?
  inputBinding:
    prefix: --index-sample
- id: in_no_immediate_return
  doc: "Immediately write filters to file upon\nhitting one filter criterium. Default\
    \ = True"
  type: boolean?
  inputBinding:
    prefix: --no-immediate-return
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Path to output (filtered) VCF file\n[required]"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- vtools-filter
