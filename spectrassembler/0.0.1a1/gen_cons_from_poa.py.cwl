class: CommandLineTool
id: ../../../gen_cons_from_poa.py.cwl
inputs:
- id: in_root
  doc: "directory where to look for files (the one given to\nspectral_layout_from_minimap.py)."
  type: Directory
  inputBinding:
    prefix: --root
- id: in_poa_path
  doc: path/to/poa/poa (path to the executable)
  type: File
  inputBinding:
    prefix: --poa_path
- id: in_poa_mat_path
  doc: ''
  type: File
  inputBinding:
    prefix: --poa_mat_path
- id: in_w_len
  doc: length of consensus windows for POA.
  type: long
  inputBinding:
    prefix: --w_len
- id: in_w_ovl_len
  doc: "overlap length between two successive consensus\nwindows."
  type: long
  inputBinding:
    prefix: --w_ovl_len
- id: in_verbosity
  doc: 'verbosity level (nothing : 0, -v : 1; -vv : 2)'
  type: boolean
  inputBinding:
    prefix: --verbosity
- id: in_path_slash_to_slash_poa_score_dot_mat
  doc: -cc CONTIG, --contig CONTIG
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gen_cons_from_poa.py
