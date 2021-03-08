class: CommandLineTool
id: cva_install.cwl
inputs:
- id: in_force
  doc: Install module even if latest version is already
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_yes
  doc: Proceed without prompt
  type: boolean?
  inputBinding:
    prefix: --yes
- id: in_skip_dependencies
  doc: Skip installing dependencies
  type: boolean?
  inputBinding:
    prefix: --skip-dependencies
- id: in_private
  doc: Install a private module
  type: boolean?
  inputBinding:
    prefix: --private
- id: in_skip_data
  doc: Skip installing data
  type: boolean?
  inputBinding:
    prefix: --skip-data
- id: in_d
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_v
  doc: ''
  type: string?
  inputBinding:
    prefix: -v
- id: in_modules
  doc: Modules to install. May be regular expressions.
  type: string
  inputBinding:
    position: 0
- id: in_installed
  doc: -d, --force-data      Download data even if latest data is already installed
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/open-cravat:2.2.3--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- cva
- install
