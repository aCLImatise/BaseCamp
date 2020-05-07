class: CommandLineTool
id: data_normalization_and_rescaling.py.cwl
inputs:
- id: input
  doc: Input dataset in wide format.
  type: string
  inputBinding:
    prefix: --input
- id: design
  doc: Design file.
  type: string
  inputBinding:
    prefix: --design
- id: uniqid
  doc: Name of the column with unique.identifiers.
  type: string
  inputBinding:
    prefix: --uniqID
- id: method
  doc: Name of the normalization method that user wants to apply.
  type: string
  inputBinding:
    prefix: --method
- id: out
  doc: Path for TSV output of the normalized/re-scalled data.
  type: string
  inputBinding:
    prefix: --out
outputs: []
cwlVersion: v1.1
baseCommand:
- data_normalization_and_rescaling.py
