class: CommandLineTool
id: phyluce_assembly_parse_trinity_coverage_log.cwl
inputs:
- id: in_log
  doc: The log file to parse
  type: File?
  inputBinding:
    prefix: --log
- id: in_output
  doc: The output CSV file to create
  type: File?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: The output CSV file to create
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_assembly_parse_trinity_coverage_log
