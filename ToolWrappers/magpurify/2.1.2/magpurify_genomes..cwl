class: CommandLineTool
id: magpurify_genomes..cwl
inputs:
- id: in_mag_purify
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- magpurify
- genomes.
