class: CommandLineTool
id: secapr_add_missing_sequences.cwl
inputs:
- id: in_input
  doc: The directory containing fasta alignments
  type: Directory
  inputBinding:
    prefix: --input
- id: in_output
  doc: The output directory where results will be safed
  type: Directory
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: The output directory where results will be safed
  type: Directory
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- secapr
- add_missing_sequences
