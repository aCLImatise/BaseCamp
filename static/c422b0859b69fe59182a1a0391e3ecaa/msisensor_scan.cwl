class: CommandLineTool
id: ../../../msisensor_scan.cwl
inputs:
- id: in_string_reference_genome
  doc: <string>   reference genome sequences file, *.fasta format
  type: boolean
  inputBinding:
    prefix: -d
- id: in_string_homopolymer_file
  doc: <string>   output homopolymer and microsatelittes file
  type: File
  inputBinding:
    prefix: -o
- id: in_int_minimal_homopolymer
  doc: <int>      minimal homopolymer size, default=5
  type: boolean
  inputBinding:
    prefix: -l
- id: in_int_context_default
  doc: <int>      context length, default=5
  type: boolean
  inputBinding:
    prefix: -c
- id: in_int_maximal_homopolymer
  doc: <int>      maximal homopolymer size, default=50
  type: boolean
  inputBinding:
    prefix: -m
- id: in_int_maximal_length
  doc: <int>      maximal length of microsate, default=5
  type: boolean
  inputBinding:
    prefix: -s
- id: in_int_minimal_times
  doc: <int>      minimal repeat times of microsate, default=3
  type: boolean
  inputBinding:
    prefix: -r
- id: in_int_output_homopolymer
  doc: '<int>      output homopolymer only, 0: no; 1: yes, default=0'
  type: boolean
  inputBinding:
    prefix: -p
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_string_homopolymer_file
  doc: <string>   output homopolymer and microsatelittes file
  type: File
  outputBinding:
    glob: $(inputs.in_string_homopolymer_file)
cwlVersion: v1.1
baseCommand:
- msisensor
- scan
