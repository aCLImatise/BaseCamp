class: CommandLineTool
id: kreport2krona.py.cwl
inputs:
- id: in_report_file
  doc: Input kraken report file for converting
  type: File?
  inputBinding:
    prefix: --report-file
- id: in_output
  doc: Output krona-report file name
  type: File?
  inputBinding:
    prefix: --output
- id: in_intermediate_ranks
  doc: Include non-traditional taxonomic ranks in output
  type: boolean?
  inputBinding:
    prefix: --intermediate-ranks
- id: in_no_intermediate_ranks
  doc: "Do not include non-traditional taxonomic ranks in\noutput [default: no intermediate\
    \ ranks]\n"
  type: boolean?
  inputBinding:
    prefix: --no-intermediate-ranks
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output krona-report file name
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- kreport2krona.py
