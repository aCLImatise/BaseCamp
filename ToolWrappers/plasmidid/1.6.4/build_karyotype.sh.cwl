class: CommandLineTool
id: build_karyotype.sh.cwl
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
- id: in_f
  doc: name for identification
  type: File?
  inputBinding:
    prefix: -f
- id: in_g
  doc: name for identification
  type: string?
  inputBinding:
    prefix: -g
- id: in_value_display_summary
  doc: value to display plasmids covered >= in summary image
  type: string?
  inputBinding:
    prefix: -R
- id: in_value_display_individual
  doc: value to display plasmids covered >= in individual image
  type: string?
  inputBinding:
    prefix: -k
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
- build_karyotype.sh
