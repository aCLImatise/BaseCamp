class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/msisensor_scan.cwl
inputs:
- id: string_file_format
  doc: <string>   reference genome sequences file, *.fasta format
  type: boolean
  inputBinding:
    prefix: -d
- id: string_output_homopolymer
  doc: <string>   output homopolymer and microsatelittes file
  type: boolean
  inputBinding:
    prefix: -o
- id: int_minimal_homopolymer
  doc: <int>      minimal homopolymer size, default=5
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
  doc: <int>      maximal length of microsate, default=5
  type: boolean
  inputBinding:
    prefix: -s
- id: int_minimal_repeat
  doc: <int>      minimal repeat times of microsate, default=3
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
- msisensor
- scan
