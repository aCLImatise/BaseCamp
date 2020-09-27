class: CommandLineTool
id: maskrc_svg.py.cwl
inputs:
- id: in_gubbins
  doc: parse as Gubbins instead of ClonalFrameML
  type: boolean
  inputBinding:
    prefix: --gubbins
- id: in_aln
  doc: multiFASTA alignment used as input for CFML (required)
  type: string
  inputBinding:
    prefix: --aln
- id: in_out
  doc: output file for masked alignment (default="maskrc.aln")
  type: File
  inputBinding:
    prefix: --out
- id: in_symbol
  doc: symbol to use for masking (default="?")
  type: string
  inputBinding:
    prefix: --symbol
- id: in_regions
  doc: output recombinant regions to file
  type: File
  inputBinding:
    prefix: --regions
- id: in_svg
  doc: draw SVG output of recombinant regions and save as specified file
  type: File
  inputBinding:
    prefix: --svg
- id: in_svg_size
  doc: specify width and height of SVG in pixels (default="800x600")
  type: long
  inputBinding:
    prefix: --svgsize
- id: in_svg_order
  doc: specify file containing list of taxa (1 per line) in desired order
  type: File
  inputBinding:
    prefix: --svgorder
- id: in_svg_colour
  doc: specify colour of recombination regions in HEX format (default=black)
  type: string
  inputBinding:
    prefix: --svgcolour
- id: in_consensus
  doc: add consensus row of recombination hotspots
  type: boolean
  inputBinding:
    prefix: --consensus
- id: in_prefix
  doc: prefix used for CFML/Gubbins input files (required)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: output file for masked alignment (default="maskrc.aln")
  type: File
  outputBinding:
    glob: $(inputs.in_out)
- id: out_regions
  doc: output recombinant regions to file
  type: File
  outputBinding:
    glob: $(inputs.in_regions)
- id: out_svg
  doc: draw SVG output of recombinant regions and save as specified file
  type: File
  outputBinding:
    glob: $(inputs.in_svg)
cwlVersion: v1.1
baseCommand:
- maskrc-svg.py
