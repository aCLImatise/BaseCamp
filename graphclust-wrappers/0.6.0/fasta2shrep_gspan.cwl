class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fasta2shrep_gspan.pl.cwl
inputs:
- id: _selects_shreps
  doc: '0 # selects all shreps'
  type: boolean
  inputBinding:
    prefix: -M
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
- fasta2shrep_gspan.pl
