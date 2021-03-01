class: CommandLineTool
id: ttest.py.cwl
inputs:
- id: in_input
  doc: Input dataset in wide format.
  type: string?
  inputBinding:
    prefix: --input
- id: in_design
  doc: Design file.
  type: File?
  inputBinding:
    prefix: --design
- id: in_unique_id
  doc: Name of the column with unique identifiers.
  type: string?
  inputBinding:
    prefix: --uniqueID
- id: in_group
  doc: Name of the column with group variable.
  type: string?
  inputBinding:
    prefix: --group
- id: in_pairing
  doc: "Choice of the test: has to be either paired or\nunpaired."
  type: string?
  inputBinding:
    prefix: --pairing
- id: in_order
  doc: "Name of the pairing vaiable if paired option is\nselected.Not required/ignored\
    \ when unpaired test is\nselected."
  type: string?
  inputBinding:
    prefix: --order
- id: in_summaries
  doc: Summaries file name. TSV format.
  type: File?
  inputBinding:
    prefix: --summaries
- id: in_flags
  doc: Flags file. TSV format.
  type: File?
  inputBinding:
    prefix: --flags
- id: in_volcano
  doc: Volcano plot. PDF Format.
  type: string?
  inputBinding:
    prefix: --volcano
- id: in_palette
  doc: Name of the palette to use.
  type: string?
  inputBinding:
    prefix: --palette
- id: in_color
  doc: "Name of a valid color scheme on the selected palette\n"
  type: string?
  inputBinding:
    prefix: --color
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ttest.py
