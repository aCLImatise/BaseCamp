class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/msisensor_pro_scan.cwl
inputs:
- id: string_reference_genome
  doc: <string>   reference genome sequences file, *.fasta or *.fa format
  type: boolean
  inputBinding:
    prefix: -d
- id: string_output_homopolymers
  doc: <string>   output homopolymers and microsatellites file
  type: boolean
  inputBinding:
    prefix: -o
- id: int_minimal_homopolymerrepeat
  doc: <int>      minimal homopolymer(repeat unit length = 1) size, default=10
  type: boolean
  inputBinding:
    prefix: -l
- id: int_context_length
  doc: <int>      context length, default=5
  type: boolean
  inputBinding:
    prefix: -c
- id: int_maximal_default
  doc: <int>      maximal homopolymer size, default=50
  type: boolean
  inputBinding:
    prefix: -m
- id: int_maximal_length
  doc: <int>      maximal length of microsatellite, default=5
  type: boolean
  inputBinding:
    prefix: -s
- id: int_minimal_repeat
  doc: <int>      minimal repeat times of microsatellite(repeat unit length>=2), default=5
  type: boolean
  inputBinding:
    prefix: -r
- id: int_output_homopolymer
  doc: '<int>      output homopolymer only, 0: no; 1: yes, default=0'
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- msisensor-pro
- scan
