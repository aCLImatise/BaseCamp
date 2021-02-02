class: CommandLineTool
id: hapbinconv.cwl
inputs:
- id: in_hap
  doc: ASCII Hap file
  type: boolean
  inputBinding:
    prefix: --hap
- id: in_out
  doc: Binary output file
  type: File
  inputBinding:
    prefix: --out
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Binary output file
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- hapbinconv
