class: CommandLineTool
id: secapr_join_exons.cwl
inputs:
- id: in_input
  doc: The directory containing the fasta-alignment-files
  type: Directory?
  inputBinding:
    prefix: --input
- id: in_output
  doc: The output directory where results will be saved
  type: Directory?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: The output directory where results will be saved
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- secapr
- join_exons
