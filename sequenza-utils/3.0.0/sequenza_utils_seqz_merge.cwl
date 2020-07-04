class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sequenza_utils_seqz_merge.cwl
inputs:
- id: output
  doc: Output file. For gzip compressed output name the file ending in .gz. Default
    STDOUT
  type: string
  inputBinding:
    prefix: --output
- id: seq_zone
  doc: First input file. If both input files contain the same line, the information
    in the first file will be used
  type: string
  inputBinding:
    prefix: --seqz1
- id: seq_z_two
  doc: Second input file
  type: string
  inputBinding:
    prefix: --seqz2
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
