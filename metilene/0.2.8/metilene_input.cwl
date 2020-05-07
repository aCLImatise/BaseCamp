class: CommandLineTool
id: metilene_input.pl.cwl
inputs:
- id: in2
  doc: comma-seperated list of sorted (!) bedgraph input files of group 2
  type: boolean
  inputBinding:
    prefix: --in2
- id: out
  doc: 'path/file of out file (metilene input) (default: metilene_g1_g2.input, g1
    set by -h1 option, g2 set by -h2 option)'
  type: boolean
  inputBinding:
    prefix: --out
- id: h1
  doc: 'identifier of group 1 (default: g1)'
  type: boolean
  inputBinding:
    prefix: --h1
- id: h2
  doc: 'identifier of group 2 (default: g2)'
  type: boolean
  inputBinding:
    prefix: --h2
- id: b
  doc: 'path/executable of bedtools executable (default: in PATH)'
  type: boolean
  inputBinding:
    prefix: -b
outputs: []
cwlVersion: v1.1
baseCommand:
- metilene_input.pl
