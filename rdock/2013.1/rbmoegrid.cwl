class: CommandLineTool
id: rbmoegrid.cwl
inputs:
- id: o
  doc: (.grd is suffixed)
  type: string
  inputBinding:
    prefix: -o
- id: receptor
  doc: file (contains active site params)
  type: string
  inputBinding:
    prefix: '- receptor'
- id: scoring
  doc: param file (default calcgrid_vdw.prm)
  type: string
  inputBinding:
    prefix: '- scoring'
- id: grid
  doc: (default=0.5A)
  type: string
  inputBinding:
    prefix: '- grid'
- id: grid
  doc: around docking site (default=1.0A)
  type: string
  inputBinding:
    prefix: '- grid'
- id: tripos
  doc: type (default is C.3)
  type: string
  inputBinding:
    prefix: '- Tripos'
outputs: []
cwlVersion: v1.1
baseCommand:
- rbmoegrid
