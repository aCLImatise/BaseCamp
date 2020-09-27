class: CommandLineTool
id: kallisto_h5dump.cwl
inputs:
- id: in_output_dir
  doc: Directory to write output to
  type: Directory
  inputBinding:
    prefix: --output-dir
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_abundance_doth_five
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Directory to write output to
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- kallisto
- h5dump
