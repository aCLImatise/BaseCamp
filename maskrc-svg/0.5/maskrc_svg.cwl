class: CommandLineTool
id: maskrc_svg.py.cwl
inputs:
- id: prefix
  doc: prefix used for CFML/Gubbins input files (required)
  type: string
  inputBinding:
    position: 0
- id: gubbins
  doc: parse as Gubbins instead of ClonalFrameML
  type: boolean
  inputBinding:
    prefix: --gubbins
- id: aln
  doc: multiFASTA alignment used as input for CFML (required)
  type: string
  inputBinding:
    prefix: --aln
- id: out
  doc: output file for masked alignment (default="maskrc.aln")
  type: string
  inputBinding:
    prefix: --out
- id: symbol
  doc: symbol to use for masking (default="?")
  type: string
  inputBinding:
    prefix: --symbol
- id: regions
  doc: output recombinant regions to file
  type: File
  inputBinding:
    prefix: --regions
- id: svg
  doc: draw SVG output of recombinant regions and save as specified file
  type: File
  inputBinding:
    prefix: --svg
- id: svg_size
  doc: specify width and height of SVG in pixels (default="800x600")
  type: string
  inputBinding:
    prefix: --svgsize
- id: svg_order
  doc: specify file containing list of taxa (1 per line) in desired order
  type: File
  inputBinding:
    prefix: --svgorder
- id: svg_colour
  doc: specify colour of recombination regions in HEX format (default=black)
  type: string
  inputBinding:
    prefix: --svgcolour
- id: consensus
  doc: add consensus row of recombination hotspots
  type: boolean
  inputBinding:
    prefix: --consensus
outputs: []
cwlVersion: v1.1
baseCommand:
- maskrc-svg.py
