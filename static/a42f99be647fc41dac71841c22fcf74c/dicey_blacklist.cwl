class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/dicey_blacklist.cwl
inputs:
- id: arg_blacklist_bed
  doc: '[ --blacklist ] arg (="blacklist.bed") blacklist in BED format'
  type: boolean
  inputBinding:
    prefix: -b
- id: arg_gzipped_file
  doc: '[ --outfile ] arg (="map.fa.gz")   gzipped output file'
  type: boolean
  inputBinding:
    prefix: -o
- id: danio_rerio_dot_fado_tgz
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- dicey
- blacklist
