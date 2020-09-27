class: CommandLineTool
id: rampler.cwl
inputs:
- id: in_out_directory
  doc: "default: current directory\npath in which sampled files will be created"
  type: Directory
  inputBinding:
    prefix: --out-directory
- id: in_sequences
  doc: split <sequences> <chunk size>
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_directory
  doc: "default: current directory\npath in which sampled files will be created"
  type: Directory
  outputBinding:
    glob: $(inputs.in_out_directory)
cwlVersion: v1.1
baseCommand:
- rampler
