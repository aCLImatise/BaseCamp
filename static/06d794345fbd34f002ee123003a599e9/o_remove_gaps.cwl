class: CommandLineTool
id: o_remove_gaps.cwl
inputs:
- id: in_output
  doc: "Path for output.\n"
  type: File?
  inputBinding:
    prefix: --output
- id: in_fast_a_file_path
  doc: FASTA file that contains reads to be padded
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Path for output.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- o-remove-gaps
