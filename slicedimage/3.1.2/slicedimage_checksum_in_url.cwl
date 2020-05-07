class: CommandLineTool
id: slicedimage_checksum_in_url.cwl
inputs:
- id: in_url
  doc: URL for the source partition file
  type: string
  inputBinding:
    position: 0
- id: out_path
  doc: Path to write partition file with checksums
  type: string
  inputBinding:
    position: 1
- id: pretty
  doc: Pretty-print the output file
  type: boolean
  inputBinding:
    prefix: --pretty
outputs: []
cwlVersion: v1.1
baseCommand:
- slicedimage
- checksum
- in_url
