class: CommandLineTool
id: ../../../o_remove_gaps.cwl
inputs:
- id: output
  doc: Path for output.
  type: File
  inputBinding:
    prefix: --output
- id: fast_a_file_path
  doc: FASTA file that contains reads to be padded
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- o-remove-gaps
