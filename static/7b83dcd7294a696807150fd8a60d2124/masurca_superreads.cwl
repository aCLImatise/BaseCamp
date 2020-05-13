class: CommandLineTool
id: masurca_superreads.cwl
inputs:
- id: output_dir
  doc: Create the super reads in the directory given by PATH. Create the directory
    if it does not exists.
  type: File
  inputBinding:
    prefix: --output-dir
outputs: []
cwlVersion: v1.1
baseCommand:
- masurca-superreads
