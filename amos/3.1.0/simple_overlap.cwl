class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/simple_overlap.cwl
inputs:
- id: also_show_alignments
  doc: 'Also show alignments of overlaps '
  type: boolean
  inputBinding:
    prefix: -a
- id: maximum_error_rate
  doc: Maximum error rate for overlaps is <x> e.g., -E 0.06 for 6 0.000000e+00rror
    rate
  type: string
  inputBinding:
    prefix: -E
- id: input_fasta_file
  doc: Input is a fasta file
  type: boolean
  inputBinding:
    prefix: -F
- id: set_minimum_length
  doc: Set minimum overlap length to <n>
  type: string
  inputBinding:
    prefix: -o
- id: set_verbose_level
  doc: Set verbose level to <n>.  Higher produces more output.
  type: string
  inputBinding:
    prefix: -v
- id: bank_name
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- simple-overlap
