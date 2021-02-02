class: CommandLineTool
id: biopet_fastqsplitter.cwl
inputs:
- id: in_log_level
  doc: "Level of log information printed. Possible levels: 'debug', 'info', 'warn',\
    \ 'error'"
  type: string
  inputBinding:
    prefix: --log_level
- id: in_input_file
  doc: Path to input file
  type: File
  inputBinding:
    prefix: --inputFile
- id: in_output_file
  doc: Path to output file. Multiple output files can be specified.
  type: File
  inputBinding:
    prefix: --outputFile
- id: in_fast_q_splitter
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: Path to output file. Multiple output files can be specified.
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- biopet-fastqsplitter
