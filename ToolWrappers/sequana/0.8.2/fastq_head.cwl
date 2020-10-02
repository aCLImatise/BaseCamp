class: CommandLineTool
id: fastq_head.cwl
inputs:
- id: in_nlines
  doc: Number of lines to extract.
  type: long
  inputBinding:
    prefix: --nlines
- id: in_input_fastq_gzipped
  doc: input fastq gzipped or not
  type: File
  inputBinding:
    prefix: --input
- id: in_output_file_extension
  doc: "output file with .gz extension or not\n"
  type: File
  inputBinding:
    prefix: --output
- id: in_var_3
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_4
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_extension
  doc: "output file with .gz extension or not\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_extension)
cwlVersion: v1.1
baseCommand:
- fastq_head
