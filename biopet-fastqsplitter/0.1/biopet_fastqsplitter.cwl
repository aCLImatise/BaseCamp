class: CommandLineTool
id: biopet_fastqsplitter.cwl
inputs:
- id: log_level
  doc: "Level of log information printed. Possible levels: 'debug', 'info', 'warn',\
    \ 'error'"
  type: string
  inputBinding:
    prefix: --log_level
- id: input_file
  doc: Path to input file
  type: File
  inputBinding:
    prefix: --inputFile
- id: output_file
  doc: Path to output file. Multiple output files can be specified.
  type: File
  inputBinding:
    prefix: --outputFile
outputs: []
cwlVersion: v1.1
baseCommand:
- biopet-fastqsplitter
