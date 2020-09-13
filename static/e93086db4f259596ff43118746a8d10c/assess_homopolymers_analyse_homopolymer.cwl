class: CommandLineTool
id: ../../../assess_homopolymers_analyse_homopolymer.cwl
inputs:
- id: in_output_dir
  doc: "Output directory (will be created). (default:\nhomopolymers)\n"
  type: Directory
  inputBinding:
    prefix: --output_dir
- id: in_pkl
  doc: Input .pkl file(s).
  type: string
  inputBinding:
    position: 0
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
- homopolymer
