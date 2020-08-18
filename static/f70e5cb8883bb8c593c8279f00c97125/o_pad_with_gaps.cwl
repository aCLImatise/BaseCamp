class: CommandLineTool
id: ../../../o_pad_with_gaps.cwl
inputs:
- id: reverse
  doc: 'Pad the beginning of reads, instead of the end (default: False)'
  type: boolean
  inputBinding:
    prefix: --reverse
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
- o-pad-with-gaps
