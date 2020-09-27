class: CommandLineTool
id: classifyMatesApply.cwl
inputs:
- id: in_read_fragments_here
  doc: Read fragments from here
  type: string
  inputBinding:
    prefix: -G
- id: in_read_results_here
  doc: Read results from here; any number of -r options can be supplied
  type: long
  inputBinding:
    prefix: -r
- id: in_also_dump_results
  doc: Also dump the results to stdout
  type: boolean
  inputBinding:
    prefix: -p
- id: in_output_gatekeeper_edit
  doc: Output gatekeeper edit file
  type: File
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_gatekeeper_edit
  doc: Output gatekeeper edit file
  type: File
  outputBinding:
    glob: $(inputs.in_output_gatekeeper_edit)
cwlVersion: v1.1
baseCommand:
- classifyMatesApply
