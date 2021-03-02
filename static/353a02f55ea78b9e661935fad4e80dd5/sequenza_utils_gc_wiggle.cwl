class: CommandLineTool
id: sequenza_utils_gc_wiggle.cwl
inputs:
- id: in_fast_a
  doc: "the fasta file. It can be a file name or \"-\" to use\nSTDIN"
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_output_file_stdout
  doc: Output file "-" for STDOUT
  type: File?
  inputBinding:
    prefix: -o
- id: in_window_size_calculate
  doc: The window size to calculate the GC-content percentage
  type: long?
  inputBinding:
    prefix: -w
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_stdout
  doc: Output file "-" for STDOUT
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_stdout)
hints: []
cwlVersion: v1.1
baseCommand:
- sequenza-utils
- gc_wiggle
