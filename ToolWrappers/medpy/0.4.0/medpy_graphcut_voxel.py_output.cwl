class: CommandLineTool
id: medpy_graphcut_voxel.py_output.cwl
inputs:
- id: in_me_dpy_graph_cut_voxel_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- medpy_graphcut_voxel.py
- output
