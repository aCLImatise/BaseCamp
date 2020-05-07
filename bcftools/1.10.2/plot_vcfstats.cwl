class: CommandLineTool
id: plot_vcfstats.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: merge
  doc: Merge vcfstats files to STDOUT, skip plotting.
  type: boolean
  inputBinding:
    prefix: --merge
- id: prefix
  doc: Output directory.
  type: string
  inputBinding:
    prefix: --prefix
- id: no_pdf
  doc: Skip the PDF creation step.
  type: boolean
  inputBinding:
    prefix: --no-PDF
- id: raster_ize
  doc: Rasterize PDF images for fast rendering, the default and opposite of -v.
  type: boolean
  inputBinding:
    prefix: --rasterize
- id: sample_names
  doc: Use sample names for xticks rather than numeric IDs.
  type: boolean
  inputBinding:
    prefix: --sample-names
- id: title
  doc: Identify files by these titles in plots. Can be given multiple times.
  type: string
  inputBinding:
    prefix: --title
- id: main_title
  doc: Main title for the PDF.
  type: string
  inputBinding:
    prefix: --main-title
- id: vectors
  doc: Generate vector graphics for PDF images, the opposite of -r
  type: boolean
  inputBinding:
    prefix: --vectors
outputs: []
cwlVersion: v1.1
baseCommand:
- plot-vcfstats
