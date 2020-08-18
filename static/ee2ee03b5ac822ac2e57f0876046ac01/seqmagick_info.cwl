class: CommandLineTool
id: ../../../seqmagick_info.cwl
inputs:
- id: input_format
  doc: Input format. Overrides extension for all input files
  type: string
  inputBinding:
    prefix: --input-format
- id: out_file
  doc: 'Output destination. Default: STDOUT'
  type: string
  inputBinding:
    prefix: --out-file
- id: format
  doc: Specify output format as tab-delimited, CSV or aligned in a borderless table.
    Default is tab-delimited if the output is directed to a file, aligned if output
    to the console.
  type: string
  inputBinding:
    prefix: --format
- id: threads
  doc: Number of threads (CPUs). [1]
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- seqmagick
- info
