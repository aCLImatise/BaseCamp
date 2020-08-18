class: CommandLineTool
id: ../../../knock_knock_install_example_data.cwl
inputs:
- id: project_directory
  doc: directory to install example data
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- knock-knock
- install-example-data
