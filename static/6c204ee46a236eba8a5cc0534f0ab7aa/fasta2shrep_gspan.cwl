class: CommandLineTool
id: fasta2shrep_gspan.pl.cwl
inputs:
- id: wins
  doc: '""'
  type: boolean
  inputBinding:
    prefix: -wins
- id: shift
  doc: 1 nt
  type: boolean
  inputBinding:
    prefix: -shift
- id: c
  doc: '10'
  type: boolean
  inputBinding:
    prefix: -c
- id: t
  doc: '3'
  type: boolean
  inputBinding:
    prefix: -t
- id: m
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
