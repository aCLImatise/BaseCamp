class: CommandLineTool
id: ../../../skmer_query.cwl
inputs:
- id: in_add_processed_query
  doc: Add the processed input (query) to the (reference) library
  type: boolean
  inputBinding:
    prefix: -a
- id: in_output_distances_prefix
  doc: 'Output (distances) prefix. Default: dist'
  type: string
  inputBinding:
    prefix: -o
- id: in_base_error_rate
  doc: Base error rate. By default, the error rate is automatically
  type: string
  inputBinding:
    prefix: -e
- id: in_max_number_processors
  doc: "Max number of processors to use [1-8]. Default for this machine:\n8\n"
  type: long
  inputBinding:
    prefix: -p
- id: in_t
  doc: ''
  type: boolean
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- skmer
- query
