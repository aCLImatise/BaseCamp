class: CommandLineTool
id: ../../../rbcavity_ReceptorPrmFile.cwl
inputs:
- id: receptor
  doc: receptor file
  type: string
  inputBinding:
    prefix: -receptor
- id: was
  doc: write active site
  type: boolean
  inputBinding:
    prefix: -was
- id: ras
  doc: read active site
  type: boolean
  inputBinding:
    prefix: -ras
- id: dump_insight
  doc: dump InsightII/PyMol grids
  type: boolean
  inputBinding:
    prefix: -dump-insight
- id: viewer
  doc: dump Viewer PSF/CRD files
  type: boolean
  inputBinding:
    prefix: -viewer
- id: list
  doc: list receptor atoms within <dist>
  type: string
  inputBinding:
    prefix: -list
- id: site
  doc: print site descriptors
  type: boolean
  inputBinding:
    prefix: -site
- id: border
  doc: set the border around the cavities
  type: string
  inputBinding:
    prefix: -border
- id: rb_cavity
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: receptor_dot_prm
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- rbcavity
- ReceptorPrmFile
