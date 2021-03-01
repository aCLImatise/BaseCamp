class: CommandLineTool
id: blobtools_plot.cwl
inputs:
- id: in_in_file
  doc: BlobDB file (created with "blobtools create")
  type: File?
  inputBinding:
    prefix: --infile
- id: in_lib
  doc: Plot only certain covlib(s). Separated by ","
  type: string?
  inputBinding:
    prefix: --lib
- id: in_no_title
  doc: Do not add filename as title to plot
  type: boolean?
  inputBinding:
    prefix: --notitle
- id: in_file_label
  doc: Label axis based on filenames
  type: boolean?
  inputBinding:
    prefix: --filelabel
- id: in_plot_groups
  doc: "Number of (taxonomic) groups to plot, remaining\ngroups are placed in 'other'\
    \ [default: 8]"
  type: long?
  inputBinding:
    prefix: --plotgroups
- id: in_length
  doc: 'Minimum sequence length considered for plotting [default: 100]'
  type: long?
  inputBinding:
    prefix: --length
- id: in_c_index
  doc: "Colour blobs by 'c index' [default: False]"
  type: boolean?
  inputBinding:
    prefix: --cindex
- id: in_no_hit
  doc: 'Hide sequences without taxonomic annotation [default: False]'
  type: boolean?
  inputBinding:
    prefix: --nohit
- id: in_no_scale
  doc: 'Do not scale sequences by length [default: False]'
  type: boolean?
  inputBinding:
    prefix: --noscale
- id: in_legend
  doc: Plot legend of blobplot in separate figure
  type: boolean?
  inputBinding:
    prefix: --legend
- id: in_multiplot
  doc: Multi-plot. Print blobplot for each (taxonomic) group separately
  type: boolean?
  inputBinding:
    prefix: --multiplot
- id: in_cumulative
  doc: Print plot after addition of each (taxonomic) group
  type: boolean?
  inputBinding:
    prefix: --cumulative
- id: in_sort
  doc: 'Sort order for plotting [default: span]'
  type: string?
  inputBinding:
    prefix: --sort
- id: in_sort_first
  doc: "<L1,L2,...>    Labels that should always be plotted first, regardless of sort\
    \ order\n(\"no-hit,other,undef\" is often a useful setting)"
  type: boolean?
  inputBinding:
    prefix: --sort_first
- id: in_hist
  doc: 'Data for histograms [default: span]'
  type: string?
  inputBinding:
    prefix: --hist
- id: in_rank
  doc: "Taxonomic rank used for colouring of blobs [default: phylum]\n(Supported:\
    \ species, genus, family, order,\nphylum, superkingdom)"
  type: string?
  inputBinding:
    prefix: --rank
- id: in_tax_rule
  doc: "Taxrule which has been used for computing taxonomy\n(Supported: bestsum, bestsumorder)\
    \ [default: bestsum]"
  type: string?
  inputBinding:
    prefix: --taxrule
- id: in_format
  doc: "Figure format for plot (png, pdf, eps, jpeg,\nps, svg, svgz, tiff) [default:\
    \ png]"
  type: string?
  inputBinding:
    prefix: --format
- id: in_no_blobs
  doc: 'Omit blobplot [default: False]'
  type: boolean?
  inputBinding:
    prefix: --noblobs
- id: in_no_reads
  doc: 'Omit plot of reads mapping [default: False]'
  type: boolean?
  inputBinding:
    prefix: --noreads
- id: in_out
  doc: Output prefix
  type: string?
  inputBinding:
    prefix: --out
- id: in_label
  doc: "Relabel (taxonomic) groups, can be used several times.\ne.g. \"A=Actinobacteria,Proteobacteria\""
  type: string?
  inputBinding:
    prefix: --label
- id: in_colours
  doc: File containing colours for (taxonomic) groups. This allows having more than
    9 colours.
  type: File?
  inputBinding:
    prefix: --colours
- id: in_exclude
  doc: "Exclude these (taxonomic) groups (also works for 'other')\ne.g. \"Actinobacteria,Proteobacteria,other\""
  type: string?
  inputBinding:
    prefix: --exclude
- id: in_ref_cov
  doc: "File containing number of \"total\" and \"mapped\" reads\nper coverage file.\
    \ (e.g.: bam0,900,100). If provided, info\nwill be used in read coverage plot(s)."
  type: File?
  inputBinding:
    prefix: --refcov
- id: in_cat_colour
  doc: "Colour plot based on categories from FILE\n(format : \"seq     category\"\
    ).\n"
  type: File?
  inputBinding:
    prefix: --catcolour
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- blobtools
- plot
