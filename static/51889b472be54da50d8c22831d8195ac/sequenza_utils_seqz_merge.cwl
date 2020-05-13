class: CommandLineTool
id: sequenza_utils_seqz_merge.cwl
inputs:
- id: output
  doc: Output file. For gzip compressed output name the file ending in .gz. Default
    STDOUT
  type: string
  inputBinding:
    prefix: --output
- id: tab_ix
  doc: Path of the tabix binary. Default "tabix"
  type: string
  inputBinding:
    prefix: --tabix
outputs: []
cwlVersion: v1.1
baseCommand:
- sequenza-utils
- seqz_merge
