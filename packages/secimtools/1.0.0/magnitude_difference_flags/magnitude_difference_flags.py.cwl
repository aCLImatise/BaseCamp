class: CommandLineTool
id: magnitude_difference_flags.py.cwl
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
  doc: Name of the column with uniq IDs.
  type: string
  inputBinding:
    prefix: --ID
- id: in_group
  doc: "Add the option to separate sample IDs by treatement\nname."
  type: string
  inputBinding:
    prefix: --group
- id: in_no_zero
  doc: Flag to ignore zeros.
  type: boolean
  inputBinding:
    prefix: --noZero
- id: in_debug
  doc: Add debugging log output.
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_html
  doc: "Path for html output file (this option is just for\ngalaxy"
  type: File
  inputBinding:
    prefix: --html
- id: in_html_path
  doc: "Path for html output file (this option is just for\ngalaxy"
  type: File
  inputBinding:
    prefix: --htmlPath
- id: in_figure
  doc: Output path for plot file
  type: File
  inputBinding:
    prefix: --figure
- id: in_flags
  doc: Output path for flag file
  type: File
  inputBinding:
    prefix: --flags
- id: in_output_name_counts
  doc: "Output name for counts filesThe extension is not\nrequiered its going to be\
    \ addedautomatically for each\nfile.\n"
  type: File
  inputBinding:
    prefix: --counts
- id: in_count_digits_determine
  doc: Count the digits in data to determine possible outliers or discrepancies
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_html
  doc: "Path for html output file (this option is just for\ngalaxy"
  type: File
  outputBinding:
    glob: $(inputs.in_html)
- id: out_html_path
  doc: "Path for html output file (this option is just for\ngalaxy"
  type: File
  outputBinding:
    glob: $(inputs.in_html_path)
- id: out_figure
  doc: Output path for plot file
  type: File
  outputBinding:
    glob: $(inputs.in_figure)
- id: out_flags
  doc: Output path for flag file
  type: File
  outputBinding:
    glob: $(inputs.in_flags)
- id: out_output_name_counts
  doc: "Output name for counts filesThe extension is not\nrequiered its going to be\
    \ addedautomatically for each\nfile.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output_name_counts)
cwlVersion: v1.1
baseCommand:
- magnitude_difference_flags.py
