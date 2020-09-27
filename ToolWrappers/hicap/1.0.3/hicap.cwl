class: CommandLineTool
id: hicap.cwl
inputs:
- id: in_query_fp
  doc: Input FASTA query
  type: string
  inputBinding:
    prefix: --query_fp
- id: in_output_dir
  doc: Output directory
  type: Directory
  inputBinding:
    prefix: --output_dir
- id: in_help_all
  doc: Display extended help
  type: boolean
  inputBinding:
    prefix: --help_all
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- hicap
