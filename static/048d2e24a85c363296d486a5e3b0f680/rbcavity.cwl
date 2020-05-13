class: CommandLineTool
id: rbcavity.cwl
inputs:
- id: receptor_param
  doc: receptor param file (contains active site params)
  type: string
  inputBinding:
    prefix: --receptor-param
- id: write_docking_cavities
  doc: write docking cavities (plus distance grid) to .as file
  type: boolean
  inputBinding:
    prefix: --write-docking-cavities
- id: read_docking_cavities
  doc: read docking cavities (plus distance grid) from .as file
  type: boolean
  inputBinding:
    prefix: --read-docking-cavities
- id: write_insight_ii_grids
  doc: dump InsightII grids for each cavity for visualisation
  type: boolean
  inputBinding:
    prefix: --write-insightii-grids
- id: write_psf_crd
  doc: dump target PSF/CRD files for rDock Viewer
  type: boolean
  inputBinding:
    prefix: --write-psf-crd
- id: list_atoms_dist
  doc: 'list receptor atoms within specified distance of any cavity (in angstrom)
    (default: 5.0)'
  type: string
  inputBinding:
    prefix: --list-atoms-dist
- id: print_site
  doc: print SITE descriptors (counts of exposed atoms)
  type: boolean
  inputBinding:
    prefix: --print-site
- id: border
  doc: 'set the border around the cavities for the distance grid (in angstrom) (default:
    8.0)'
  type: string
  inputBinding:
    prefix: --border
- id: write_moe_grid
  doc: write active site into a MOE grid
  type: boolean
  inputBinding:
    prefix: --write-moe-grid
outputs: []
cwlVersion: v1.1
baseCommand:
- rbcavity
