class: CommandLineTool
id: phyloFlash_barplot.R.cwl
inputs:
- id: in_top_tax_a
  doc: "Number of taxa to display in the barplot. By default takes the top 10\nby\
    \ total proportional abundance in the library"
  type: long?
  inputBinding:
    prefix: --toptaxa
- id: in_file
  doc: 'CSV file containing three columns: Taxon, sample, and counts'
  type: File?
  inputBinding:
    prefix: --file
- id: in_out
  doc: Name of output PDF or PNG file
  type: File?
  inputBinding:
    prefix: --out
- id: in_palette
  doc: "Palette name for taxon colors. One of the qualitative palettes from the\n\
    ColorBrewer2 set: Accent, Dark2, Paired, Pastel1, Pastel2, Set1, Set2, or Set3."
  type: long?
  inputBinding:
    prefix: --palette
- id: in_subset
  doc: "Display only subset from this taxon (e.g. show only Bacteria). Supply\nfull\
    \ taxon string prefix, excluding trailing semicolon."
  type: string?
  inputBinding:
    prefix: --subset
- id: in_raw_val
  doc: Plot raw counts rather than proportions
  type: boolean?
  inputBinding:
    prefix: --rawval
- id: in_scale_plot_width
  doc: "Change the plot width by this scaling factor (e.g. 2 makes it twice\nas wide).\
    \ Allows adjustment when bars are hidden because the\nlegend labels are too long."
  type: long?
  inputBinding:
    prefix: --scaleplotwidth
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Name of output PDF or PNG file
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phyloflash:3.4--0
cwlVersion: v1.1
baseCommand:
- phyloFlash_barplot.R
