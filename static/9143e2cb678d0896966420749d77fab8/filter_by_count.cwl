class: CommandLineTool
id: filter_by_count.py.cwl
inputs:
- id: min_count
  doc: 'Minimum FL count (default: 2)'
  type: long
  inputBinding:
    prefix: --min_count
- id: dun_use_group_count
  doc: 'Turn off more stringent min count (default: off)'
  type: boolean
  inputBinding:
    prefix: --dun_use_group_count
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_by_count.py
