class: CommandLineTool
id: AlignmentTools_compare_error_type.cwl
inputs:
- id: in_stem
  doc: Output stem (default <query_nucl.fasta>)
  type: string?
  inputBinding:
    prefix: --stem
- id: in_compare_error_type
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_ref_nucl
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- AlignmentTools
- compare-error-type
