#!/usr/bin/env cwl-runner

baseCommand:
- maskrc-svg.py
class: CommandLineTool
cwlVersion: v1.0
id: maskrc-svg.py
inputs:
- doc: prefix used for CFML/Gubbins input files (required)
  id: prefix
  inputBinding:
    position: 0
  type: string
- doc: parse as Gubbins instead of ClonalFrameML
  id: gubbins
  inputBinding:
    prefix: --gubbins
  type: boolean
- doc: multiFASTA alignment used as input for CFML (required)
  id: aln
  inputBinding:
    prefix: --aln
  type: string
- doc: output file for masked alignment (default="maskrc.aln")
  id: out
  inputBinding:
    prefix: --out
  type: string
- doc: symbol to use for masking (default="?")
  id: symbol
  inputBinding:
    prefix: --symbol
  type: string
- doc: output recombinant regions to file
  id: regions
  inputBinding:
    prefix: --regions
  type: File
- doc: draw SVG output of recombinant regions and save as specified file
  id: svg
  inputBinding:
    prefix: --svg
  type: File
- doc: specify width and height of SVG in pixels (default="800x600")
  id: svg_size
  inputBinding:
    prefix: --svgsize
  type: string
- doc: specify file containing list of taxa (1 per line) in desired order
  id: svg_order
  inputBinding:
    prefix: --svgorder
  type: File
- doc: specify colour of recombination regions in HEX format (default=black)
  id: svg_colour
  inputBinding:
    prefix: --svgcolour
  type: string
- doc: add consensus row of recombination hotspots
  id: consensus
  inputBinding:
    prefix: --consensus
  type: boolean
