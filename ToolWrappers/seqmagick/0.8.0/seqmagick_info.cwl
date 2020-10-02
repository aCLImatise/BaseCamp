class: CommandLineTool
id: seqmagick_info.cwl
inputs:
- id: in_input_format
  doc: Input format. Overrides extension for all input files
  type: string
  inputBinding:
    prefix: --input-format
- id: in_out_file
  doc: 'Output destination. Default: STDOUT'
  type: File
  inputBinding:
    prefix: --out-file
- id: in_format
  doc: "Specify output format as tab-delimited, CSV or aligned\nin a borderless table.\
    \ Default is tab-delimited if the\noutput is directed to a file, aligned if output\
    \ to the\nconsole."
  type: File
  inputBinding:
    prefix: --format
- id: in_threads
  doc: Number of threads (CPUs). [1]
  type: long
  inputBinding:
    prefix: --threads
- id: in_sequence_files
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_file
  doc: 'Output destination. Default: STDOUT'
  type: File
  outputBinding:
    glob: $(inputs.in_out_file)
- id: out_format
  doc: "Specify output format as tab-delimited, CSV or aligned\nin a borderless table.\
    \ Default is tab-delimited if the\noutput is directed to a file, aligned if output\
    \ to the\nconsole."
  type: File
  outputBinding:
    glob: $(inputs.in_format)
cwlVersion: v1.1
baseCommand:
- seqmagick
- info
