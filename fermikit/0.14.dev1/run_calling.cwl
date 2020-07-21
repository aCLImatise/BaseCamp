class: CommandLineTool
id: ../../../run_calling.cwl
inputs:
- id: prefix_output_files
  doc: prefix of output files [inferred from input]
  type: string
  inputBinding:
    prefix: -o
- id: prefix_bwa_index
  doc: prefix for BWA index [same as <indexed-ref>]
  type: string
  inputBinding:
    prefix: -b
- id: number_of_threads
  doc: number of threads [4]
  type: long
  inputBinding:
    prefix: -t
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -OPTIONS
- id: more_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -MORE_OPTIONS
outputs: []
cwlVersion: v1.1
baseCommand:
- run-calling
