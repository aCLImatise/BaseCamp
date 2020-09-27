class: CommandLineTool
id: genomepy_genomes.cwl
inputs:
- id: in_provider
  doc: provider
  type: string
  inputBinding:
    prefix: --provider
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- genomepy
- genomes
