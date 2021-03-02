class: CommandLineTool
id: assess_homopolymers_count_bam.cwl
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
hints: []
cwlVersion: v1.1
baseCommand:
- assess_homopolymers
- count
- bam
