class: CommandLineTool
id: adapt_filter_coverage.sh.cwl
inputs:
- id: in_file
  doc: file
  type: File?
  inputBinding:
    prefix: -i
- id: in_directory_optional_default
  doc: directory (optional). By default the file is replaced in the same location
  type: File?
  inputBinding:
    prefix: -o
- id: in_value_filter_values
  doc: value to filter >= values. If not supplied, all records will be outputted
  type: string?
  inputBinding:
    prefix: -c
- id: in_ad_end_outputted
  doc: to ad at the end of the outputted file (list of accession numbers)
  type: File?
  inputBinding:
    prefix: -s
- id: in_usage_message
  doc: usage message
  type: string?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/plasmidid:1.6.4--1
cwlVersion: v1.1
baseCommand:
- adapt_filter_coverage.sh
