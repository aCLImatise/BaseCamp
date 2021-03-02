class: CommandLineTool
id: summarize_flags.py.cwl
inputs:
- id: in_flags
  doc: Flag file.
  type: File?
  inputBinding:
    prefix: --flags
- id: in_id
  doc: Name of the column with unique identifiers.
  type: string?
  inputBinding:
    prefix: --ID
- id: in_out_summary
  doc: "Output file for Summary.\n"
  type: File?
  inputBinding:
    prefix: --outSummary
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_summary
  doc: "Output file for Summary.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_summary)
hints: []
cwlVersion: v1.1
baseCommand:
- summarize_flags.py
