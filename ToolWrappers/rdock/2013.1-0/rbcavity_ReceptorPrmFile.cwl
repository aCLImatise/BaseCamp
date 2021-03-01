class: CommandLineTool
id: rbcavity_ReceptorPrmFile.cwl
inputs:
- id: in_receptor
  doc: receptor file
  type: File?
  inputBinding:
    prefix: -receptor
- id: in_was
  doc: write active site
  type: boolean?
  inputBinding:
    prefix: -was
- id: in_ras
  doc: read active site
  type: boolean?
  inputBinding:
    prefix: -ras
- id: in_dump_insight
  doc: dump InsightII/PyMol grids
  type: boolean?
  inputBinding:
    prefix: -dump-insight
- id: in_viewer
  doc: dump Viewer PSF/CRD files
  type: boolean?
  inputBinding:
    prefix: -viewer
- id: in_list
  doc: list receptor atoms within <dist>
  type: string?
  inputBinding:
    prefix: -list
- id: in_site
  doc: print site descriptors
  type: boolean?
  inputBinding:
    prefix: -site
- id: in_border
  doc: set the border around the cavities
  type: string?
  inputBinding:
    prefix: -border
- id: in_rb_cavity
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_receptor_dot_prm
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rbcavity
- ReceptorPrmFile
