class: CommandLineTool
id: ggd_list.cwl
inputs:
- id: in_pattern
  doc: "(Optional) pattern to match the name of the ggd data\npackage."
  type: string?
  inputBinding:
    prefix: --pattern
- id: in_prefix
  doc: "(Optional) The name or the full directory path to a\nconda environment where\
    \ a ggd recipe is stored. (Only\nneeded if listing data files not in the current\n\
    environment)\n"
  type: File?
  inputBinding:
    prefix: --prefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ggd:1.1.3--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- ggd
- list
