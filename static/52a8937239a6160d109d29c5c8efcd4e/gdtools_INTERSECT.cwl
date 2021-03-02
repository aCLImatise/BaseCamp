class: CommandLineTool
id: gdtools_INTERSECT.cwl
inputs:
- id: in_output
  doc: Output Genome Diff file name (DEFAULT=output.gd)
  type: File?
  inputBinding:
    prefix: --output
- id: in_verbose
  doc: Verbose mode
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output Genome Diff file name (DEFAULT=output.gd)
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- gdtools
- INTERSECT
