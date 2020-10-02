class: CommandLineTool
id: nglview.cwl
inputs:
- id: in_crd
  doc: coordinate filename
  type: File
  inputBinding:
    prefix: --crd
- id: in_browser
  doc: web browser
  type: string
  inputBinding:
    prefix: --browser
- id: in_j_exe
  doc: jupyter path
  type: File
  inputBinding:
    prefix: --jexe
- id: in_notebook_name
  doc: notebook name
  type: string
  inputBinding:
    prefix: --notebook-name
- id: in_port
  doc: port number
  type: long
  inputBinding:
    prefix: --port
- id: in_remote
  doc: create remote notebook
  type: boolean
  inputBinding:
    prefix: --remote
- id: in_clean
  doc: delete temp file after closing notebook
  type: boolean
  inputBinding:
    prefix: --clean
- id: in_auto
  doc: Run 1st cell right after openning notebook
  type: boolean
  inputBinding:
    prefix: --auto
- id: in_symlink
  doc: Create symlink for nglview-js-widgets (developer mode)
  type: boolean
  inputBinding:
    prefix: --symlink
- id: in_command
  doc: "command could be a topology filename (.pdb, .mol2,\n.parm7, ...) or could\
    \ be a python script (.py), a\nnotebook (.ipynb). If not given, a notebook will\
    \ be\ncreated with only nglview imported"
  type: string
  inputBinding:
    position: 0
- id: in_t_raj
  doc: coordinate filename, optional
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nglview
