class: CommandLineTool
id: filter_by_count.py.cwl
inputs:
- id: in_min_count
  doc: 'Minimum FL count (default: 2)'
  type: long
  inputBinding:
    prefix: --min_count
- id: in_dun_use_group_count
  doc: "Turn off more stringent min count (default: off)\n"
  type: boolean
  inputBinding:
    prefix: --dun_use_group_count
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- filter_by_count.py
