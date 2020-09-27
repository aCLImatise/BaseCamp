class: CommandLineTool
id: geoDL.cwl
inputs:
- id: in_meta
  doc: Use metadata file instead of fetching it on EBI
  type: boolean
  inputBinding:
    prefix: --meta
- id: in_s
  doc: ''
  type: boolean
  inputBinding:
    prefix: -s
- id: in_d
  doc: ''
  type: boolean
  inputBinding:
    prefix: -d
- id: in_gse
  doc: 'GSE accession number, eg: GSE67196'
  type: string
  inputBinding:
    position: 0
- id: in_website
  doc: -d, --dry             Don't actually download anything, just print the wget
  type: string
  inputBinding:
    position: 0
- id: in_cmds
  doc: -s [SAMPLES [SAMPLES ...]], --samples [SAMPLES [SAMPLES ...]]
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- geoDL
