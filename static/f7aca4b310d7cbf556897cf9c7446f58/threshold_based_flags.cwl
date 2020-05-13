class: CommandLineTool
id: threshold_based_flags.py.cwl
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
- id: id
  doc: 'Name of the column with unique: identifiers.'
  type: string
  inputBinding:
    prefix: --ID
- id: group
  doc: Add the option to separate sample IDs by treatement name.
  type: string
  inputBinding:
    prefix: --group
- id: cut_off
  doc: Cutoff to use for which values to flag. This defaults to 30,000
  type: string
  inputBinding:
    prefix: --cutoff
- id: output
  doc: Output path for the created flag file.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- threshold_based_flags.py
