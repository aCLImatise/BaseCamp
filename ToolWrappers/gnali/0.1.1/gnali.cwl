class: CommandLineTool
id: gnali.cwl
inputs:
- id: in_input_file
  doc: 'File of genes to test. Accepted formats: csv, txt'
  type: File?
  inputBinding:
    prefix: --input_file
- id: in_output_dir
  doc: 'Name of output directory. Default: results-ID/'
  type: Directory?
  inputBinding:
    prefix: --output_dir
- id: in_force
  doc: Force existing output folder to be overwritten
  type: Directory?
  inputBinding:
    prefix: --force
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: 'Name of output directory. Default: results-ID/'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
- id: out_force
  doc: Force existing output folder to be overwritten
  type: Directory?
  outputBinding:
    glob: $(inputs.in_force)
hints: []
cwlVersion: v1.1
baseCommand:
- gnali
