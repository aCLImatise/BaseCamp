class: CommandLineTool
id: AlignmentTools_compare_error_type.cwl
inputs:
- id: stem
  doc: Output stem (default <query_nucl.fasta>)
  type: string
  inputBinding:
    prefix: --stem
outputs: []
cwlVersion: v1.1
baseCommand:
- AlignmentTools
- compare-error-type
