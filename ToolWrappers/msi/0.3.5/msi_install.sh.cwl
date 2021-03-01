class: CommandLineTool
id: msi_install.sh.cwl
inputs:
- id: in__installupdate_software
  doc: ': install/update software.'
  type: string?
  inputBinding:
    prefix: -x
- id: in_installupdate_files_directory
  doc: ": install/update all files to directory 'dir' (default: //MSI)"
  type: Directory?
  inputBinding:
    prefix: -i
- id: in_conda_installation_mode
  doc: '- Conda installation mode'
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_install_msi_conda
  doc: '- install msi in a conda environment [test_msi_env]'
  type: boolean?
  inputBinding:
    prefix: -E
- id: in_msi_install_dots_h
  doc: '[-x all|tool_name -i toplevel_installation_folder]  '
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/msi:0.3.5--1
cwlVersion: v1.1
baseCommand:
- msi_install.sh
