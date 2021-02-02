class: CommandLineTool
id: ../../../rbcavity.cwl
inputs:
- id: in_prmfile_receptor_param
  doc: <PrmFile> - receptor param file (contains active site params)
  type: boolean
  inputBinding:
    prefix: -r
- id: in_was
  doc: '[-W]   - write docking cavities (plus distance grid) to .as file'
  type: boolean
  inputBinding:
    prefix: -was
- id: in_ras
  doc: '[-R]   - read docking cavities (plus distance grid) from .as file'
  type: boolean
  inputBinding:
    prefix: -ras
- id: in_dump_insightii_grids
  doc: '- dump InsightII grids for each cavity for visualisation'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_dump_target_psfcrd
  doc: '- dump target PSF/CRD files for rDock Viewer'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_dist_list_receptor
  doc: <dist>    - list receptor atoms with <dist> A of any cavity
  type: boolean
  inputBinding:
    prefix: -l
- id: in_print_site_descriptors
  doc: '- print SITE descriptors (counts of exposed atoms)'
  type: boolean
  inputBinding:
    prefix: -s
- id: in_border_set_border
  doc: <border>  - set the border around the cavities for the distance grid (default=8A)
  type: boolean
  inputBinding:
    prefix: -b
- id: in_write_active_site
  doc: '- write active site into a MOE grid'
  type: boolean
  inputBinding:
    prefix: -m
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rbcavity
