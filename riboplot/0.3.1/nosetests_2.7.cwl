class: CommandLineTool
id: ../../../nosetests_2.7.cwl
inputs:
- id: in_at_call_aside
  doc: File "/usr/local/lib/python2.7/site-packages/pkg_resources/__init__.py", line
    3079, in _call_aside
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nosetests-2.7
