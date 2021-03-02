class: CommandLineTool
id: assess_homopolymers_count_count.cwl
inputs:
- id: in_output_dir
  doc: "Output directory (will be created). (default:\nhomopolymers)"
  type: Directory?
  inputBinding:
    prefix: --output_dir
- id: in_homo_len
  doc: "Minimum homopolymer length, default 3 (default: 3)\n"
  type: long?
  inputBinding:
    prefix: --homo_len
- id: in_bam
  doc: Input bam file.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: "Output directory (will be created). (default:\nhomopolymers)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pomoxis:0.3.6--py_0
cwlVersion: v1.1
baseCommand:
- assess_homopolymers
- count
- count
