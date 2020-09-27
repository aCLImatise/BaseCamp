class: CommandLineTool
id: assess_homopolymers_analyse_analyse.cwl
inputs:
- id: in_output_dir
  doc: "Output directory (will be created). (default:\nhomopolymers)\n"
  type: Directory
  inputBinding:
    prefix: --output_dir
- id: in_homopolymer
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_analyse
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_pkl
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: "Output directory (will be created). (default:\nhomopolymers)\n"
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- assess_homopolymers
- analyse
- analyse
