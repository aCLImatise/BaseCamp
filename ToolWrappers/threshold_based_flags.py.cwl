class: CommandLineTool
id: threshold_based_flags.py.cwl
inputs:
- id: in_input
  doc: Input dataset in wide format.
  type: string
  inputBinding:
    prefix: --input
- id: in_design
  doc: Design file.
  type: File
  inputBinding:
    prefix: --design
- id: in_id
  doc: 'Name of the column with unique: identifiers.'
  type: string
  inputBinding:
    prefix: --ID
- id: in_group
  doc: "Add the option to separate sample IDs by treatement\nname."
  type: string
  inputBinding:
    prefix: --group
- id: in_cut_off
  doc: "Cutoff to use for which values to flag. This defaults\nto 30,000"
  type: long
  inputBinding:
    prefix: --cutoff
- id: in_output
  doc: "Output path for the created flag file.\n"
  type: File
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output path for the created flag file.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- threshold_based_flags.py
