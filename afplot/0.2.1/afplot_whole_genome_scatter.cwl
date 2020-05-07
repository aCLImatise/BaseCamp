class: CommandLineTool
id: afplot_whole_genome_scatter.cwl
inputs:
- id: output
  doc: Path to output file  [required]
  type: File
  inputBinding:
    prefix: --output
- id: exclude_pattern
  doc: Regex pattern(s) to exclude from contig list
  type: string
  inputBinding:
    prefix: --exclude-pattern
- id: sample
  doc: Sample name(s) of VCF file(s). If not given, will use fist sample in each VCF
    File
  type: string
  inputBinding:
    prefix: --sample
- id: label
  doc: Label(s) to VCF file(s)  [required]
  type: string
  inputBinding:
    prefix: --label
- id: vcf
  doc: Path(s) to input VCF file(s)  [required]
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
- whole-genome
- scatter
