class: CommandLineTool
id: msisensor_pro_scan.cwl
inputs:
- id: d
  doc: <string>   reference genome sequences file, *.fasta or *.fa format
  type: boolean
  inputBinding:
    prefix: -d
- id: o
  doc: <string>   output homopolymers and microsatellites file
  type: boolean
  inputBinding:
    prefix: -o
- id: l
  doc: <int>      minimal homopolymer(repeat unit length = 1) size, default=10
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
  doc: <int>      maximal length of microsatellite, default=5
  type: boolean
  inputBinding:
    prefix: -s
- id: r
  doc: <int>      minimal repeat times of microsatellite(repeat unit length>=2), default=5
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
- msisensor-pro
- scan
