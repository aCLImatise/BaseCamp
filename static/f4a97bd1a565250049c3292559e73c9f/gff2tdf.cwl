class: CommandLineTool
id: gff2tdf.pl.cwl
inputs:
- id: format
  doc: 'input format to use (gff or bedgraph) [Current value: gff]'
  type: boolean
  inputBinding:
    prefix: --format
- id: genome
  doc: 'IGVTools genome file to use [Current value: dmel_r5.33]'
  type: boolean
  inputBinding:
    prefix: --genome
- id: igv_path
  doc: path to IGVtools (leave blank if igvtools and igvtools.jar are in your path)
  type: boolean
  inputBinding:
    prefix: --igvpath
outputs: []
cwlVersion: v1.1
baseCommand:
- gff2tdf.pl
