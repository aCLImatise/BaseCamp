class: CommandLineTool
id: vsnp_filter_finder.py.cwl
inputs:
- id: cwd
  doc: Working directoy to be added as path to dependency files.
  type: string
  inputBinding:
    prefix: --cwd
- id: filters
  doc: Defining SNPs/Filter file
  type: string
  inputBinding:
    prefix: --filters
- id: group
  doc: Group/directory name
  type: string
  inputBinding:
    prefix: --group
- id: debug
  doc: turn off map.pooling of samples
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- vsnp_filter_finder.py
