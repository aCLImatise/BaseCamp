class: CommandLineTool
id: ../../../AlignmentTools_compare_error_type.cwl
inputs:
- id: stem
  doc: Output stem (default <query_nucl.fasta>)
  type: string
  inputBinding:
    prefix: --stem
- id: compare_error_type
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ref_nucl
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- AlignmentTools
- compare-error-type
