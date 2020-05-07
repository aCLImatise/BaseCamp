class: CommandLineTool
id: gen_cons_from_poa.py.cwl
inputs:
- id: root
  doc: directory where to look for files (the one given to spectral_layout_from_minimap.py).
  type: string
  inputBinding:
    prefix: --root
- id: poa_path
  doc: path/to/poa/poa (path to the executable)
  type: string
  inputBinding:
    prefix: --poa_path
- id: poa_mat_path
  doc: path/to/poa-score.mat
  type: string
  inputBinding:
    prefix: --poa_mat_path
- id: contig
  doc: index of contig you wish to compute consensus for
  type: string
  inputBinding:
    prefix: --contig
- id: w_len
  doc: length of consensus windows for POA.
  type: string
  inputBinding:
    prefix: --w_len
- id: w_ovl_len
  doc: overlap length between two successive consensus windows.
  type: string
  inputBinding:
    prefix: --w_ovl_len
- id: verbosity
  doc: 'verbosity level (nothing : 0, -v : 1; -vv : 2)'
  type: boolean
  inputBinding:
    prefix: --verbosity
outputs: []
cwlVersion: v1.1
baseCommand:
- gen_cons_from_poa.py
