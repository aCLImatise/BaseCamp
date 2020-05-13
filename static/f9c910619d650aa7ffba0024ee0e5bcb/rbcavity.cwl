class: CommandLineTool
id: rbcavity.cwl
inputs:
- id: r
  doc: <PrmFile> - receptor param file (contains active site params)
  type: boolean
  inputBinding:
    prefix: -r
- id: was
  doc: '[-W]   - write docking cavities (plus distance grid) to .as file'
  type: boolean
  inputBinding:
    prefix: -was
- id: ras
  doc: '[-R]   - read docking cavities (plus distance grid) from .as file'
  type: boolean
  inputBinding:
    prefix: -ras
- id: d
  doc: '- dump InsightII grids for each cavity for visualisation'
  type: boolean
  inputBinding:
    prefix: -d
- id: v
  doc: '- dump target PSF/CRD files for rDock Viewer'
  type: boolean
  inputBinding:
    prefix: -v
- id: l
  doc: <dist>    - list receptor atoms with <dist> A of any cavity
  type: boolean
  inputBinding:
    prefix: -l
- id: s
  doc: '- print SITE descriptors (counts of exposed atoms)'
  type: boolean
  inputBinding:
    prefix: -s
- id: b
  doc: <border>  - set the border around the cavities for the distance grid (default=8A)
  type: boolean
  inputBinding:
    prefix: -b
- id: m
  doc: '- write active site into a MOE grid'
  type: boolean
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- rbcavity
