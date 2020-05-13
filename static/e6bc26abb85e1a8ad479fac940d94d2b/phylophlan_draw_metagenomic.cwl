class: CommandLineTool
id: phylophlan_draw_metagenomic.cwl
inputs:
- id: input
  doc: 'The input file generated from phylophlan_metagenomic.py (default: None)'
  type: string
  inputBinding:
    prefix: --input
- id: map
  doc: 'A mapping file that maps each bin to its metagenome (default: None)'
  type: string
  inputBinding:
    prefix: --map
- id: top
  doc: 'The number of SGBs to display in the figure (default: 20)'
  type: string
  inputBinding:
    prefix: --top
- id: output
  doc: 'Prefix output files (default: output_heatmap)'
  type: string
  inputBinding:
    prefix: --output
- id: separator
  doc: 'The separator used in the mapping file (default: )'
  type: string
  inputBinding:
    prefix: --separator
- id: dpi
  doc: 'Dpi resolution of the images (default: 200)'
  type: string
  inputBinding:
    prefix: --dpi
- id: f
  doc: 'Images output format (default: svg)'
  type: string
  inputBinding:
    prefix: -f
- id: verbose
  doc: 'Prints more stuff (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- phylophlan_draw_metagenomic
