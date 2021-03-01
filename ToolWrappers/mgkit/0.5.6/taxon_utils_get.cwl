class: CommandLineTool
id: taxon_utils_get.cwl
inputs:
- id: in_verbose
  doc: Include header in the output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_separator
  doc: column separator
  type: string?
  inputBinding:
    prefix: --separator
- id: in_only_names
  doc: Only get matched taxon names
  type: string?
  inputBinding:
    prefix: --only-names
- id: in_partial
  doc: Use partial matches if any found (implies -o)
  type: boolean?
  inputBinding:
    prefix: --partial
- id: in_include_children
  doc: "Include taxa that are children of the requested\n(implies -o)"
  type: boolean?
  inputBinding:
    prefix: --include-children
- id: in_taxonomy_file
  doc: ''
  type: string
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
- taxon-utils
- get
