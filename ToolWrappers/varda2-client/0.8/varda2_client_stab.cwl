class: CommandLineTool
id: varda2_client_stab.cwl
inputs:
- id: in_start
  doc: Start of region
  type: string?
  inputBinding:
    prefix: --start
- id: in_end
  doc: End of region
  type: string?
  inputBinding:
    prefix: --end
- id: in_reference
  doc: "Chromosome to look at\n"
  type: string?
  inputBinding:
    prefix: --reference
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- varda2-client
- stab
