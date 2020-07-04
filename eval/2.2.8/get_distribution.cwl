class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/get_distribution.pl.cwl
inputs:
- id: inputs_gtf_files
  doc: ': Inputs are gtf files instead of list files'
  type: boolean
  inputBinding:
    prefix: -g
- id: quick_load_file
  doc: ': Quick load the gtf file.  Do not check them for errors.'
  type: boolean
  inputBinding:
    prefix: -q
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -OPTIONS
- id: more_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -MORE_OPTIONS
outputs: []
cwlVersion: v1.1
baseCommand:
- get_distribution.pl
