class: CommandLineTool
id: geoDL.cwl
inputs:
- id: gse
  doc: 'GSE accession number, eg: GSE67196'
  type: string
  inputBinding:
    position: 0
- id: meta
  doc: Use metadata file instead of fetching it on EBI website
  type: boolean
  inputBinding:
    prefix: --meta
- id: dry
  doc: Don't actually download anything, just print the wget cmds
  type: boolean
  inputBinding:
    prefix: --dry
- id: s
  doc: '[SAMPLES [SAMPLES ...]], --samples [SAMPLES [SAMPLES ...]] Space separated
    list of GSM samples to download'
  type: boolean
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- geoDL
