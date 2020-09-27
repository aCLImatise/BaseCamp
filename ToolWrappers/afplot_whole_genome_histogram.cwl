class: CommandLineTool
id: afplot_whole_genome_histogram.cwl
inputs:
- id: in_output
  doc: Path to output file  [required]
  type: File
  inputBinding:
    prefix: --output
- id: in_exclude_pattern
  doc: Regex pattern(s) to exclude from contig list
  type: string
  inputBinding:
    prefix: --exclude-pattern
- id: in_sample
  doc: "Sample name(s) of VCF file(s). If not given,\nwill use fist sample in each\
    \ VCF File"
  type: File
  inputBinding:
    prefix: --sample
- id: in_label
  doc: Label(s) to VCF file(s)  [required]
  type: File
  inputBinding:
    prefix: --label
- id: in_vcf
  doc: Path(s) to input VCF file(s)  [required]
  type: File
  inputBinding:
    prefix: --vcf
- id: in_color_palette
  doc: The name of a color palette to pass to
  type: string
  inputBinding:
    prefix: --color-palette
- id: in_kde_only
  doc: Only show kernel density plot
  type: boolean
  inputBinding:
    prefix: --kde-only
- id: in_seaborn_dot_set_palette
  doc: '--dpi INTEGER               DPI for output PNGs (default: 300)'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Path to output file  [required]
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- afplot
- whole-genome
- histogram
