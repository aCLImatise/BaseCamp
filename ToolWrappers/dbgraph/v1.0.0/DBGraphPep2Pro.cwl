class: CommandLineTool
id: DBGraphPep2Pro.cwl
inputs:
- id: in_input_edge_file
  doc: ': The input edge file name'
  type: File?
  inputBinding:
    prefix: -e
- id: in_input_edge_sequence
  doc: ': The input edge sequence (contig) file name'
  type: File?
  inputBinding:
    prefix: -s
- id: in_input_sequence_identified
  doc: ': The input sequence (identified peptides) file name'
  type: File?
  inputBinding:
    prefix: -p
- id: in_base_name_name
  doc: '(base name only): The output protein Sequences file name'
  type: File?
  inputBinding:
    prefix: -o
- id: in_output_transcript_sequences
  doc: ': The output transcript sequences file name'
  type: File?
  inputBinding:
    prefix: -n
- id: in_maximum_protein_sequence
  doc: ': maximum protein sequence length (for memory allocation, default 3000)'
  type: long?
  inputBinding:
    prefix: -L
- id: in_k
  doc: ': default 31'
  type: long?
  inputBinding:
    prefix: -k
- id: in_c
  doc: ': default 0'
  type: long?
  inputBinding:
    prefix: -c
- id: in_d
  doc: ': default 10'
  type: long?
  inputBinding:
    prefix: -d
- id: in_m
  doc: ': default 100'
  type: long?
  inputBinding:
    prefix: -m
- id: in_soap_when_set
  doc: (SOAP when set; default off for SOAP2)
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_fastg_when_set
  doc: (FastG when set; default off for SOAP2)
  type: boolean?
  inputBinding:
    prefix: -f
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_base_name_name
  doc: '(base name only): The output protein Sequences file name'
  type: File?
  outputBinding:
    glob: $(inputs.in_base_name_name)
- id: out_output_transcript_sequences
  doc: ': The output transcript sequences file name'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_transcript_sequences)
hints: []
cwlVersion: v1.1
baseCommand:
- DBGraphPep2Pro
