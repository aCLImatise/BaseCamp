class: CommandLineTool
id: kallisto_merge.cwl
inputs:
- id: in_index
  doc: "Filename for the kallisto index to be used for\npseudoalignment"
  type: File
  inputBinding:
    prefix: --index
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
- id: in_ouput_directories
  doc: ''
  type: string
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
- merge
