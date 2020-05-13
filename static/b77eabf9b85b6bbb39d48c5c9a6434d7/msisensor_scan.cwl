class: CommandLineTool
id: msisensor_scan.cwl
inputs:
- id: d
  doc: <string>   reference genome sequences file, *.fasta format
  type: boolean
  inputBinding:
    prefix: -d
- id: o
  doc: <string>   output homopolymer and microsatelittes file
  type: boolean
  inputBinding:
    prefix: -o
- id: l
  doc: <int>      minimal homopolymer size, default=5
  type: boolean
  inputBinding:
    prefix: -l
- id: c
  doc: <int>      context length, default=5
  type: boolean
  inputBinding:
    prefix: -c
- id: m
  doc: <int>      maximal homopolymer size, default=50
  type: boolean
  inputBinding:
    prefix: -m
- id: s
  doc: <int>      maximal length of microsate, default=5
  type: boolean
  inputBinding:
    prefix: -s
- id: r
  doc: <int>      minimal repeat times of microsate, default=3
  type: boolean
  inputBinding:
    prefix: -r
- id: p
  doc: '<int>      output homopolymer only, 0: no; 1: yes, default=0'
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- msisensor
- scan
