class: CommandLineTool
id: nglview.cwl
inputs:
- id: command
  doc: command could be a topology filename (.pdb, .mol2, .parm7, ...) or could be
    a python script (.py), a notebook (.ipynb). If not given, a notebook will be created
    with only nglview imported
  type: string
  inputBinding:
    position: 0
- id: t_raj
  doc: coordinate filename, optional
  type: string
  inputBinding:
    position: 1
- id: crd
  doc: coordinate filename
  type: string
  inputBinding:
    prefix: --crd
- id: browser
  doc: web browser
  type: string
  inputBinding:
    prefix: --browser
- id: j_exe
  doc: jupyter path
  type: string
  inputBinding:
    prefix: --jexe
- id: notebook_name
  doc: notebook name
  type: string
  inputBinding:
    prefix: --notebook-name
- id: port
  doc: port number
  type: string
  inputBinding:
    prefix: --port
- id: remote
  doc: create remote notebook
  type: boolean
  inputBinding:
    prefix: --remote
- id: clean
  doc: delete temp file after closing notebook
  type: boolean
  inputBinding:
    prefix: --clean
- id: auto
  doc: Run 1st cell right after openning notebook
  type: boolean
  inputBinding:
    prefix: --auto
- id: symlink
  doc: Create symlink for nglview-js-widgets (developer mode)
  type: boolean
  inputBinding:
    prefix: --symlink
outputs: []
cwlVersion: v1.1
baseCommand:
- nglview
