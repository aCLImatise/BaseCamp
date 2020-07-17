class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/knock_knock_table.cwl
inputs:
- id: group
  doc: if specified, the single group name to generate tables for; if not specified,
    all groups will be generated
  type: string
  inputBinding:
    prefix: --group
- id: project_directory
  doc: the base directory to store input data, reference annotations, and analysis
    output for a project
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- knock-knock
- table
