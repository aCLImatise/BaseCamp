class: CommandLineTool
id: ../../../dr_disco_is_blacklisted.cwl
inputs:
- id: in_blacklist_regions
  doc: ''
  type: string
  inputBinding:
    prefix: --blacklist-regions
- id: in_blacklist_junctions
  doc: "Blacklist these region-to-region junctions\n(custom format, see files in ./share/)"
  type: string
  inputBinding:
    prefix: --blacklist-junctions
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dr-disco
- is-blacklisted
