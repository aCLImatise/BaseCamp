class: CommandLineTool
id: samtools_flagstat.cwl
inputs:
- id: in_input_fmt_option
  doc: "[=VAL]\nSpecify a single input file format option in the form\nof OPTION or\
    \ OPTION=VALUE"
  type: File
  inputBinding:
    prefix: --input-fmt-option
- id: in_threads
  doc: Number of additional threads to use [0]
  type: long
  inputBinding:
    prefix: --threads
- id: in_verbosity
  doc: Set level of verbosity
  type: long
  inputBinding:
    prefix: --verbosity
- id: in_output_fmt
  doc: "[,OPT[=VAL]]...\nSpecify output format (json, tsv)\n"
  type: string
  inputBinding:
    prefix: --output-fmt
- id: in_in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- samtools
- flagstat
