class: CommandLineTool
id: tritimap_init.cwl
inputs:
- id: in_working_dir
  doc: Triti-Map running directory.
  type: File?
  inputBinding:
    prefix: --working-dir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tritimap:0.9.3--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- tritimap
- init
