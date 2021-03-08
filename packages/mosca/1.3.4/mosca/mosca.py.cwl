class: CommandLineTool
id: mosca.py.cwl
inputs:
- id: in_snake_file
  doc: Snakefile file
  type: File?
  inputBinding:
    prefix: --snakefile
- id: in_config_file
  doc: Configuration file for MOSCA (JSON or YAML)
  type: File?
  inputBinding:
    prefix: --configfile
- id: in_unlock
  doc: If user forced termination of workflow, this might be
  type: boolean?
  inputBinding:
    prefix: --unlock
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_required
  doc: -v, --version         show program's version number and exit
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mosca:1.3.4--0
cwlVersion: v1.1
baseCommand:
- mosca.py
