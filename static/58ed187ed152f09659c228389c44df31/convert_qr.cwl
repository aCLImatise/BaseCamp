class: CommandLineTool
id: convert_qr.cwl
inputs:
- id: in_it
  doc: "Input file from QuasiRecomb, usually 'quasispecies.fasta'\nfor transmitter"
  type: File?
  inputBinding:
    prefix: --it
- id: in_ir
  doc: "Input file from QuasiRecomb, usually 'quasispecies.fasta'\nfor recipient"
  type: File?
  inputBinding:
    prefix: --ir
- id: in_name_write_sequences
  doc: Name of output file to write sequences to
  type: File?
  inputBinding:
    prefix: -o
- id: in_prefix
  doc: "Prefix to use in FASTA header (retains source prefixes if\nnone provided)"
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_mf
  doc: Minimum frequency required for keeping sequence
  type: long?
  inputBinding:
    prefix: --mf
- id: in_length_sequences_have
  doc: Length of sequences have to be EXACTLY L
  type: long?
  inputBinding:
    prefix: -L
- id: in_translate_sequences_protein
  doc: Translate sequences into protein sequences
  type: boolean?
  inputBinding:
    prefix: -p
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name_write_sequences
  doc: Name of output file to write sequences to
  type: File?
  outputBinding:
    glob: $(inputs.in_name_write_sequences)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/smallgenomeutilities:0.3.2--py_0
cwlVersion: v1.1
baseCommand:
- convert_qr
