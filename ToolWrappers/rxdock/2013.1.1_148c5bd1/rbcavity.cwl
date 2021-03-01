class: CommandLineTool
id: rbcavity.cwl
inputs:
- id: in_receptor_param
  doc: "receptor param file (contains active site\nparams)"
  type: File?
  inputBinding:
    prefix: --receptor-param
- id: in_write_docking_cavities
  doc: "write docking cavities (plus distance grid)\nto .as file"
  type: boolean?
  inputBinding:
    prefix: --write-docking-cavities
- id: in_read_docking_cavities
  doc: "read docking cavities (plus distance grid)\nfrom .as file"
  type: boolean?
  inputBinding:
    prefix: --read-docking-cavities
- id: in_write_insight_ii_grids
  doc: dump InsightII grids for each cavity for
  type: boolean?
  inputBinding:
    prefix: --write-insightii-grids
- id: in_list_atoms_dist
  doc: "list receptor atoms within specified distance\nof any cavity (in angstrom)\
    \ (default: 5.0)"
  type: double?
  inputBinding:
    prefix: --list-atoms-dist
- id: in_print_site
  doc: "print SITE descriptors (counts of exposed\natoms)"
  type: boolean?
  inputBinding:
    prefix: --print-site
- id: in_border
  doc: "set the border around the cavities for the\ndistance grid (in angstrom) (default:\
    \ 8.0)"
  type: double?
  inputBinding:
    prefix: --border
- id: in_write_moe_grid
  doc: write active site into a MOE grid
  type: boolean?
  inputBinding:
    prefix: --write-moe-grid
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_visualisation
  doc: -v, --write-psf-crd           dump target PSF/CRD files for rDock Viewer
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rbcavity
