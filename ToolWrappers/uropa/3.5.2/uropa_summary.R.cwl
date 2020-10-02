class: CommandLineTool
id: uropa_summary.R.cwl
inputs:
- id: in_final_hits
  doc: file containing the final hits from UROPA.
  type: boolean
  inputBinding:
    prefix: --finalhits
- id: in_config
  doc: file containing the json formatted configuration from the UROPA run.
  type: boolean
  inputBinding:
    prefix: --config
- id: in_output
  doc: file name of output file [summary.pdf].
  type: File
  inputBinding:
    prefix: --output
- id: in_all_hits
  doc: file containing all hits from UROPA.
  type: boolean
  inputBinding:
    prefix: --allhits
- id: in_call
  doc: original command line call.
  type: boolean
  inputBinding:
    prefix: --call
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: file name of output file [summary.pdf].
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- uropa_summary.R
