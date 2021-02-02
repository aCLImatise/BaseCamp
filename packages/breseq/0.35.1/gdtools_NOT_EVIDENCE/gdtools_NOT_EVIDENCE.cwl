class: CommandLineTool
id: gdtools_NOT_EVIDENCE.cwl
inputs:
- id: in_output
  doc: output GD file (DEFAULT=output.gd)
  type: File
  inputBinding:
    prefix: --output
- id: in_id
  doc: Reorder IDs (Flag)
  type: boolean
  inputBinding:
    prefix: --id
- id: in_verbose
  doc: Verbose Mode (Flag)
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output GD file (DEFAULT=output.gd)
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- gdtools
- NOT-EVIDENCE
