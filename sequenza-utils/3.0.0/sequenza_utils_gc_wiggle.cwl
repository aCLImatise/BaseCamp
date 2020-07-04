class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sequenza_utils_gc_wiggle.cwl
inputs:
- id: fast_a
  doc: the fasta file. It can be a file name or "-" to use STDIN
  type: string
  inputBinding:
    prefix: --fasta
- id: output_file_stdout
  doc: Output file "-" for STDOUT
  type: string
  inputBinding:
    prefix: -o
- id: window_size_calculate
  doc: The window size to calculate the GC-content percentage
  type: string
  inputBinding:
    prefix: -w
outputs: []
cwlVersion: v1.1
baseCommand:
- sequenza-utils
- gc_wiggle
