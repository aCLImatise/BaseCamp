class: CommandLineTool
id: bsp2sam.py.cwl
inputs:
- id: in_out
  doc: output file name. (required)
  type: File?
  inputBinding:
    prefix: --out
- id: in_ref
  doc: reference genome fasta file. (required)
  type: File?
  inputBinding:
    prefix: --ref
- id: in_quiet
  doc: don't print progress on stderr.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_bs_map_mapping_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: output file name. (required)
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- bsp2sam.py
