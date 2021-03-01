class: CommandLineTool
id: afplot_regions_scatter.cwl
inputs:
- id: in_margin
  doc: Margin around regions to plot
  type: long?
  inputBinding:
    prefix: --margin
- id: in_region
  doc: Region string. Must be of format <contig:start-end>
  type: string?
  inputBinding:
    prefix: --region
- id: in_region_file
  doc: Path to region file
  type: File?
  inputBinding:
    prefix: --region-file
- id: in_name
  doc: Optional title for plot
  type: string?
  inputBinding:
    prefix: --name
- id: in_output_dir
  doc: Path to output directory  [required]
  type: File?
  inputBinding:
    prefix: --output-dir
- id: in_vcf
  doc: Path to input VCF file  [required]
  type: File?
  inputBinding:
    prefix: --vcf
- id: in_color_palette
  doc: The name of a color palette to pass to
  type: string?
  inputBinding:
    prefix: --color-palette
- id: in_seaborn_dot_set_palette
  doc: '--dpi INTEGER           DPI for output PNGs (default: 300)'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Path to output directory  [required]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- afplot
- regions
- scatter
