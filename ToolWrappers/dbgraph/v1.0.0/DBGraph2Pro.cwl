class: CommandLineTool
id: DBGraph2Pro.cwl
inputs:
- id: in_input_edge_file
  doc: ': The input edge file name'
  type: File
  inputBinding:
    prefix: -e
- id: in_input_edge_sequence
  doc: ': The input edge sequence (contig) file name'
  type: File
  inputBinding:
    prefix: -s
- id: in_base_name_only
  doc: '(base name only): Protein Sequences files'
  type: string
  inputBinding:
    prefix: -o
- id: in_minimum_peptide_length
  doc: ': minimum peptide length to be output (default 6)'
  type: long
  inputBinding:
    prefix: -p
- id: in_maximum_peptide_length
  doc: ': maximum peptide length to be output (default 50)'
  type: long
  inputBinding:
    prefix: -m
- id: in_minimum_contig_length
  doc: ': minimum contig length to be explored (longer contigs will be executed by
    FGS)'
  type: long
  inputBinding:
    prefix: -l
- id: in_maximum_sequence_length
  doc: ': maximum sequence length (for memory allocation, default 3000)'
  type: long
  inputBinding:
    prefix: -L
- id: in_k
  doc: ': default 31'
  type: long
  inputBinding:
    prefix: -k
- id: in_c
  doc: ': default 0'
  type: long
  inputBinding:
    prefix: -c
- id: in_d
  doc: ': default 10'
  type: long
  inputBinding:
    prefix: -d
- id: in_soap_when_set
  doc: (SOAP when set; default off for SOAP2)
  type: boolean
  inputBinding:
    prefix: -u
- id: in_when_set_default
  doc: (FastG when set; default off for SOAP2)
  type: boolean
  inputBinding:
    prefix: -f
- id: in_fastg_output_set
  doc: (FastG output by MetaSPaDes when set; default off for SOAP2)
  type: boolean
  inputBinding:
    prefix: -S
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- DBGraph2Pro
