class: CommandLineTool
id: dicey_blacklist.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: danio_rerio_fag_z
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: b
  doc: '[ --blacklist ] arg (="blacklist.bed") blacklist in BED format'
  type: boolean
  inputBinding:
    prefix: -b
- id: o
  doc: '[ --outfile ] arg (="map.fa.gz")   gzipped output file'
  type: boolean
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- dicey
- blacklist
