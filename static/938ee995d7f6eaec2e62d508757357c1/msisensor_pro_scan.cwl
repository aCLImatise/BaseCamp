class: CommandLineTool
id: msisensor_pro_scan.cwl
inputs:
- id: in_string_sequences_file
  doc: <string>   reference genome sequences file, *.fasta or *.fa format
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_string_output_homopolymers
  doc: <string>   output homopolymers and microsatellites file
  type: File?
  inputBinding:
    prefix: -o
- id: in_int_minimal_homopolymerrepeat
  doc: <int>      minimal homopolymer(repeat unit length = 1) size, default=10
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_int_context_length
  doc: <int>      context length, default=5
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_int_maximal_homopolymer
  doc: <int>      maximal homopolymer size, default=50
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_int_maximal_length
  doc: <int>      maximal length of microsatellite, default=5
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_int_minimal_repeat
  doc: <int>      minimal repeat times of microsatellite(repeat unit length>=2), default=5
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_int_output_homopolymer
  doc: '<int>      output homopolymer only, 0: no; 1: yes, default=0'
  type: boolean?
  inputBinding:
    prefix: -p
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_string_output_homopolymers
  doc: <string>   output homopolymers and microsatellites file
  type: File?
  outputBinding:
    glob: $(inputs.in_string_output_homopolymers)
hints: []
cwlVersion: v1.1
baseCommand:
- msisensor-pro
- scan
