class: CommandLineTool
id: clinvar_tsv_normalize_tsv.cwl
inputs:
- id: reference
  doc: Path to reference FASTA file
  type: string
  inputBinding:
    prefix: --reference
- id: input_tsv
  doc: Path to input TSV file.
  type: string
  inputBinding:
    prefix: --input-tsv
- id: output_tsv
  doc: Path to output TSV file.
  type: string
  inputBinding:
    prefix: --output-tsv
outputs: []
cwlVersion: v1.1
baseCommand:
- clinvar_tsv
- normalize_tsv
