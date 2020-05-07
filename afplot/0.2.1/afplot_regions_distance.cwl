class: CommandLineTool
id: afplot_regions_distance.cwl
inputs:
- id: margin
  doc: Margin around regions to plot
  type: long
  inputBinding:
    prefix: --margin
- id: region
  doc: Region string. Must be of format <contig:start-end>
  type: string
  inputBinding:
    prefix: --region
- id: region_file
  doc: Path to region file
  type: File
  inputBinding:
    prefix: --region-file
- id: name
  doc: Optional title for plot
  type: string
  inputBinding:
    prefix: --name
- id: output_dir
  doc: Path to output directory  [required]
  type: File
  inputBinding:
    prefix: --output-dir
- id: vcf
  doc: Path to input VCF file  [required]
  type: File
  inputBinding:
    prefix: --vcf
- id: color_palette
  doc: The name of a color palette to pass to seaborn.set_palette
  type: string
  inputBinding:
    prefix: --color-palette
- id: dpi
  doc: 'DPI for output PNGs (default: 300)'
  type: long
  inputBinding:
    prefix: --dpi
outputs: []
cwlVersion: v1.1
baseCommand:
- afplot
- regions
- distance
