#!/usr/bin/env cwl-runner

baseCommand:
- rbcavity
class: CommandLineTool
cwlVersion: v1.0
id: rbcavity
inputs:
- doc: <PrmFile> - receptor param file (contains active site params)
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: '[-W]   - write docking cavities (plus distance grid) to .as file'
  id: was
  inputBinding:
    prefix: -was
  type: boolean
- doc: '[-R]   - read docking cavities (plus distance grid) from .as file'
  id: ras
  inputBinding:
    prefix: -ras
  type: boolean
- doc: '- dump InsightII grids for each cavity for visualisation'
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: '- dump target PSF/CRD files for rDock Viewer'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: <dist>    - list receptor atoms with <dist> A of any cavity
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: '- print SITE descriptors (counts of exposed atoms)'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: <border>  - set the border around the cavities for the distance grid (default=8A)
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: '- write active site into a MOE grid'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
