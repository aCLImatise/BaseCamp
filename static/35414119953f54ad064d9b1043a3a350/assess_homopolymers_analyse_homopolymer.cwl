class: CommandLineTool
id: assess_homopolymers_analyse_homopolymer.cwl
inputs:
- id: in_output_dir
  doc: "Output directory (will be created). (default:\nhomopolymers)\n"
  type: Directory?
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
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pomoxis:0.3.6--py_0
cwlVersion: v1.1
baseCommand:
- assess_homopolymers
- analyse
- homopolymer
