class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/metilene_input.pl.cwl
inputs:
- id: in_two
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
- id: hone
  doc: 'identifier of group 1 (default: g1)'
  type: boolean
  inputBinding:
    prefix: --h1
- id: h_two
  doc: 'identifier of group 2 (default: g2)'
  type: boolean
  inputBinding:
    prefix: --h2
- id: pathexecutable_bedtools_executable
  doc: 'path/executable of bedtools executable (default: in PATH)'
  type: boolean
  inputBinding:
    prefix: -b
- id: in_one
  doc: ''
  type: string
  inputBinding:
    prefix: --in1
outputs: []
cwlVersion: v1.1
baseCommand:
- metilene_input.pl
