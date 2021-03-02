class: CommandLineTool
id: get_gff_info_mongodb.cwl
inputs:
- id: in_taxonomy
  doc: Taxonomy used to populate the lineage
  type: File?
  inputBinding:
    prefix: --taxonomy
- id: in_no_cache
  doc: No cache for the lineage function
  type: boolean?
  inputBinding:
    prefix: --no-cache
- id: in_indent
  doc: "If used, the json will be written in a human\nreadble form"
  type: long?
  inputBinding:
    prefix: --indent
- id: in_progress
  doc: Shows Progress Bar
  type: boolean?
  inputBinding:
    prefix: --progress
- id: in_gff_file
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0
cwlVersion: v1.1
baseCommand:
- get-gff-info
- mongodb
