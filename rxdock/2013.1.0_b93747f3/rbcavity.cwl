#!/usr/bin/env cwl-runner

baseCommand:
- rbcavity
class: CommandLineTool
cwlVersion: v1.0
id: rbcavity
inputs:
- doc: receptor param file (contains active site params)
  id: receptor_param
  inputBinding:
    prefix: --receptor-param
  type: string
- doc: write docking cavities (plus distance grid) to .as file
  id: write_docking_cavities
  inputBinding:
    prefix: --write-docking-cavities
  type: boolean
- doc: read docking cavities (plus distance grid) from .as file
  id: read_docking_cavities
  inputBinding:
    prefix: --read-docking-cavities
  type: boolean
- doc: dump InsightII grids for each cavity for visualisation
  id: write_insight_ii_grids
  inputBinding:
    prefix: --write-insightii-grids
  type: boolean
- doc: dump target PSF/CRD files for rDock Viewer
  id: write_psf_crd
  inputBinding:
    prefix: --write-psf-crd
  type: boolean
- doc: 'list receptor atoms within specified distance of any cavity (in angstrom)
    (default: 5.0)'
  id: list_atoms_dist
  inputBinding:
    prefix: --list-atoms-dist
  type: string
- doc: print SITE descriptors (counts of exposed atoms)
  id: print_site
  inputBinding:
    prefix: --print-site
  type: boolean
- doc: 'set the border around the cavities for the distance grid (in angstrom) (default:
    8.0)'
  id: border
  inputBinding:
    prefix: --border
  type: string
- doc: write active site into a MOE grid
  id: write_moe_grid
  inputBinding:
    prefix: --write-moe-grid
  type: boolean
