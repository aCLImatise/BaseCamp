class: CommandLineTool
id: ttest.py.cwl
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
- id: unique_id
  doc: Name of the column with unique identifiers.
  type: string
  inputBinding:
    prefix: --uniqueID
- id: group
  doc: Name of the column with group variable.
  type: string
  inputBinding:
    prefix: --group
- id: pairing
  doc: 'Choice of the test: has to be either paired or unpaired.'
  type: string
  inputBinding:
    prefix: --pairing
- id: order
  doc: Name of the pairing vaiable if paired option is selected.Not required/ignored
    when unpaired test is selected.
  type: string
  inputBinding:
    prefix: --order
- id: summaries
  doc: Summaries file name. TSV format.
  type: string
  inputBinding:
    prefix: --summaries
- id: flags
  doc: Flags file. TSV format.
  type: string
  inputBinding:
    prefix: --flags
- id: volcano
  doc: Volcano plot. PDF Format.
  type: string
  inputBinding:
    prefix: --volcano
- id: palette
  doc: Name of the palette to use.
  type: string
  inputBinding:
    prefix: --palette
- id: color
  doc: Name of a valid color scheme on the selected palette
  type: string
  inputBinding:
    prefix: --color
outputs: []
cwlVersion: v1.1
baseCommand:
- ttest.py
