class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/import_igenome.cwl
inputs:
- id: path
  doc: path to the desired genome tarball or directory to integrate
  type: File
  inputBinding:
    prefix: --path
- id: genome
  doc: name to be assigned to the selected genome
  type: string
  inputBinding:
    prefix: --genome
- id: config
  doc: path to local genome configuration file. Optional if 'REFGENIE' environment
    variable is set.
  type: string
  inputBinding:
    prefix: --config
outputs: []
cwlVersion: v1.1
baseCommand:
- import_igenome
