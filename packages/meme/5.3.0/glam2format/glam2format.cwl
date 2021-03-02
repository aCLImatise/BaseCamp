class: CommandLineTool
id: glam2format.cwl
inputs:
- id: in_output_file_stdout
  doc: ': output file (stdout)'
  type: File?
  inputBinding:
    prefix: -o
- id: in_make_compact_alignment
  doc: ': make a compact alignment'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_sequence_file_flanking
  doc: ': sequence file for flanking sequences'
  type: boolean?
  inputBinding:
    prefix: -f
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_stdout
  doc: ': output file (stdout)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_stdout)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0
cwlVersion: v1.1
baseCommand:
- glam2format
