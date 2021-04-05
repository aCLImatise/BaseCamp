class: CommandLineTool
id: sam_to_bam.sh.cwl
inputs:
- id: in_file
  doc: file
  type: File?
  inputBinding:
    prefix: -i
- id: in_directory_optional_default
  doc: directory (optional). By default the BAM file will replace SAM in the same
    location
  type: File?
  inputBinding:
    prefix: -o
- id: in_name
  doc: name
  type: string?
  inputBinding:
    prefix: -s
- id: in_name_optional_unset
  doc: name (optional). If unset, samples will be gathered in NO_GROUP group
  type: string?
  inputBinding:
    prefix: -g
- id: in_of_threads
  doc: of threads
  type: long?
  inputBinding:
    prefix: -T
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
- sam_to_bam.sh
