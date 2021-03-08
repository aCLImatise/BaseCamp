class: CommandLineTool
id: ggd_uninstall.cwl
inputs:
- id: in_channel
  doc: "The ggd channel of the recipe to uninstall. (Default =\ngenomics)\n"
  type: string?
  inputBinding:
    prefix: --channel
- id: in_names
  doc: the name(s) of the ggd package(s) to uninstall
  type: string
  inputBinding:
    position: 0
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
- uninstall
