class: CommandLineTool
id: ../../../rbcavity.cwl
inputs:
- id: prmfile_receptor_param
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
- id: dump_insightii_grids
  doc: '- dump InsightII grids for each cavity for visualisation'
  type: boolean
  inputBinding:
    prefix: -d
- id: dump_target_files
  doc: '- dump target PSF/CRD files for rDock Viewer'
  type: boolean
  inputBinding:
    prefix: -v
- id: dist_list_receptor
  doc: <dist>    - list receptor atoms with <dist> A of any cavity
  type: boolean
  inputBinding:
    prefix: -l
- id: print_site_descriptors
  doc: '- print SITE descriptors (counts of exposed atoms)'
  type: boolean
  inputBinding:
    prefix: -s
- id: border_set_border
  doc: <border>  - set the border around the cavities for the distance grid (default=8A)
  type: boolean
  inputBinding:
    prefix: -b
- id: write_active_site
  doc: '- write active site into a MOE grid'
  type: boolean
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- rbcavity
