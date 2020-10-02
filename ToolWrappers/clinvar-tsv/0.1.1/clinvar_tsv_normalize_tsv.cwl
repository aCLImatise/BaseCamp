class: CommandLineTool
id: clinvar_tsv_normalize_tsv.cwl
inputs:
- id: in_reference
  doc: Path to reference FASTA file
  type: File
  inputBinding:
    prefix: --reference
- id: in_input_tsv
  doc: Path to input TSV file.
  type: File
  inputBinding:
    prefix: --input-tsv
- id: in_output_tsv
  doc: "Path to output TSV file.\n"
  type: File
  inputBinding:
    prefix: --output-tsv
- id: in_clin_var_tsv
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_normalize_tsv
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_tsv
  doc: "Path to output TSV file.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output_tsv)
cwlVersion: v1.1
baseCommand:
- clinvar_tsv
- normalize_tsv
