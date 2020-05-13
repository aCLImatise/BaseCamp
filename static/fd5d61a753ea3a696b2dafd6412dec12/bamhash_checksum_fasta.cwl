class: CommandLineTool
id: bamhash_checksum_fasta.cwl
inputs:
- id: debug
  doc: Debug mode. Prints full hex for each read to stdout
  type: boolean
  inputBinding:
    prefix: --debug
- id: no_read_names
  doc: Do not use read names as part of checksum
  type: boolean
  inputBinding:
    prefix: --no-readnames
outputs: []
cwlVersion: v1.1
baseCommand:
- bamhash_checksum_fasta
