class: CommandLineTool
id: plot_vcfstats.cwl
inputs:
- id: in_merge
  doc: Merge vcfstats files to STDOUT, skip plotting.
  type: boolean?
  inputBinding:
    prefix: --merge
- id: in_prefix
  doc: Output directory.
  type: Directory?
  inputBinding:
    prefix: --prefix
- id: in_no_pdf
  doc: Skip the PDF creation step.
  type: boolean?
  inputBinding:
    prefix: --no-PDF
- id: in_raster_ize
  doc: Rasterize PDF images for fast rendering, the default and opposite of -v.
  type: boolean?
  inputBinding:
    prefix: --rasterize
- id: in_sample_names
  doc: Use sample names for xticks rather than numeric IDs.
  type: boolean?
  inputBinding:
    prefix: --sample-names
- id: in_title
  doc: Identify files by these titles in plots. Can be given multiple times.
  type: string?
  inputBinding:
    prefix: --title
- id: in_main_title
  doc: Main title for the PDF.
  type: string?
  inputBinding:
    prefix: --main-title
- id: in_vectors
  doc: Generate vector graphics for PDF images, the opposite of -r
  type: boolean?
  inputBinding:
    prefix: --vectors
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_prefix
  doc: Output directory.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_prefix)
hints: []
cwlVersion: v1.1
baseCommand:
- plot-vcfstats
