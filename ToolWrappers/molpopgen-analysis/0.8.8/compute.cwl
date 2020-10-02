class: CommandLineTool
id: compute.cwl
inputs:
- id: in_write_results_outfile
  doc: ': write results to outfile'
  type: string
  inputBinding:
    prefix: -o
- id: in_use_nth_sequence
  doc: ': use the nth sequence in the data as an outgroup'
  type: string
  inputBinding:
    prefix: -O
- id: in_use_total_segregating
  doc: ': use the total # of segregating sites, rather than # of mutations'
  type: boolean
  inputBinding:
    prefix: -n
- id: in_verbose_progress_reporting
  doc: ': verbose progress reporting to standard error'
  type: boolean
  inputBinding:
    prefix: -v
- id: in__pretty_output
  doc: ': pretty output'
  type: boolean
  inputBinding:
    prefix: -V
- id: in_i
  doc: ''
  type: File
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- compute
