class: CommandLineTool
id: fastq_utils_sort_MATE1_INPUT.cwl
inputs:
- id: in_verbose
  doc: "--help         Show this message and exit.\n"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_mate_two_output
  doc: Sort paired-end sequences from [mate1-input] and [mate2-input] into files
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastq-utils
- sort
- MATE1_INPUT
