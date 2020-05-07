class: CommandLineTool
id: structure_2_gspan.pl.cwl
inputs:
- id: tmp
  doc: '"/var/tmp/fasta2shrep"'
  type: boolean
  inputBinding:
    prefix: -tmp
- id: o
  doc: '"CURRENT_DIR/GSPAN_Outputs/"'
  type: boolean
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- structure_2_gspan.pl
