class: CommandLineTool
id: pair_sequences.cwl
inputs:
- id: in_tsv_file_patientsampleclustertype
  doc: tsv file of patient/sample/cluster/type mapping
  type: File
  inputBinding:
    prefix: -i
- id: in_msa_file_containing
  doc: MSA file containing the alignments between patient-sample
  type: File
  inputBinding:
    prefix: -s
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_sequences
  doc: -o pairs     Output file for final pairs
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pair_sequences
