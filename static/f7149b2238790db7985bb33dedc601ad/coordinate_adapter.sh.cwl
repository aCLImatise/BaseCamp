class: CommandLineTool
id: coordinate_adapter.sh.cwl
inputs:
- id: in_file_bed_format
  doc: file in bed format
  type: File?
  inputBinding:
    prefix: -i
- id: in_file_coordinates_relationship
  doc: file with coordinates relationship within bed file ddbb and link reference
  type: File?
  inputBinding:
    prefix: -l
- id: in_directory_optional_default
  doc: directory (optional). By default the file is placed in the same location as
    input
  type: File?
  inputBinding:
    prefix: -o
- id: in_extend_annotation_default
  doc: to extend annotation, default 2000
  type: long?
  inputBinding:
    prefix: -n
- id: in_name
  doc: name
  type: File?
  inputBinding:
    prefix: -f
- id: in_mode_remove_duplicates
  doc: mode. Remove duplicates
  type: string?
  inputBinding:
    prefix: -u
- id: in_mode_remove_suffix
  doc: mode. Remove suffix of prokka
  type: string?
  inputBinding:
    prefix: -p
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
  dockerPull: quay.io/biocontainers/plasmidid:1.6.5--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- coordinate_adapter.sh
