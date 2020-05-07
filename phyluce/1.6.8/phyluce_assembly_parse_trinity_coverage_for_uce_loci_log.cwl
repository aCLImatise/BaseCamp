class: CommandLineTool
id: phyluce_assembly_parse_trinity_coverage_for_uce_loci_log.cwl
inputs:
- id: log
  doc: The log file to parse
  type: string
  inputBinding:
    prefix: --log
- id: output
  doc: The output CSV file to create
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_assembly_parse_trinity_coverage_for_uce_loci_log
