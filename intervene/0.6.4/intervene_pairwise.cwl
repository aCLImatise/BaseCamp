class: CommandLineTool
id: intervene_pairwise.cwl
inputs:
- id: i
  doc: '[INPUT [INPUT ...]], --input [INPUT [INPUT ...]] Input genomic regions in
    (BED/GTF/GFF) format.  For files in a directory use *.<extension>. e.g. *.bed'
  type: boolean
  inputBinding:
    prefix: -i
- id: type
  doc: Type of input sets. Genomic regions or lists of genes/SNPs sets. Default is
    "genomic".
  type: string
  inputBinding:
    prefix: --type
- id: compute
  doc: 'Compute count/fraction of overlaps or other statistical relationships.  count:
    calculates the number of overlaps.  frac: calculates the fraction of overlap.
    (Default) jaccard: calculate the Jaccard statistic.  reldist: calculate the distribution
    of relative distances. fisher: calculate Fisher`s statistic.  Note: For jaccard
    and reldist regions should be pre-shorted or set --sort.'
  type: string
  inputBinding:
    prefix: --compute
- id: bed_tools_options
  doc: 'List any of the arguments available for bedtools subcommands: interset, jaccard,
    fisher, reldist. Type bedtools <subcommand> --help to view all the options. For
    example: --bedtools-options f=0.8,r,etc'
  type: string
  inputBinding:
    prefix: --bedtools-options
- id: corr
  doc: Compute the correlation.  Default is "False".
  type: boolean
  inputBinding:
    prefix: --corr
- id: corr_type
  doc: 'Select the type of correlation.  pearson: computes the Pearson correlation.
    (Default)  kendall: computes the Kendall correlation.  spearman: computes the
    Spearman correlation.  Note: This only works if --corr is set.'
  type: string
  inputBinding:
    prefix: --corrtype
- id: h_type
  doc: Heatmap plot type. Default is "tribar".
  type: string
  inputBinding:
    prefix: --htype
- id: triangle
  doc: Show lower/upper triangle of the matrix as heatmap if --htype=tribar. Default
    is "lower".
  type: string
  inputBinding:
    prefix: --triangle
- id: diagonal
  doc: Show the diagonal values in the heatmap.  Default is "False".
  type: boolean
  inputBinding:
    prefix: --diagonal
- id: names
  doc: 'Comma-separated list of names as labels for input files. If it is not set
    file names will be used as labels. For example: --names=A,B,C,D,E,F'
  type: string
  inputBinding:
    prefix: --names
- id: filenames
  doc: Use file names as labels instead.  Default is "False".
  type: boolean
  inputBinding:
    prefix: --filenames
- id: sort
  doc: Set this only if your files are not sorted.  Default is "False".
  type: boolean
  inputBinding:
    prefix: --sort
- id: genome
  doc: Required argument if --compute=fisher. Needs to be a string assembly name like
    "mm10" or "hg38"
  type: string
  inputBinding:
    prefix: --genome
- id: output
  doc: Output folder path where results will be stored.  Default is current working
    directory.
  type: string
  inputBinding:
    prefix: --output
- id: project
  doc: 'Project name for the output. Default is: "Intervene"'
  type: string
  inputBinding:
    prefix: --project
- id: bar_label
  doc: x-axis label of boxplot if --htype=tribar. Default is "Set size"
  type: string
  inputBinding:
    prefix: --barlabel
- id: bar_color
  doc: Boxplot color (hex vlaue or name, e.g. blue). Default is "#53cfff".
  type: string
  inputBinding:
    prefix: --barcolor
- id: font_size
  doc: Label font size. Default is "8".
  type: string
  inputBinding:
    prefix: --fontsize
- id: title
  doc: Heatmap main title. Default is "Pairwise intersection".
  type: string
  inputBinding:
    prefix: --title
- id: space
  doc: White space between barplt and heatmap, if --htype=tribar. Default is "1.3".
  type: string
  inputBinding:
    prefix: --space
- id: fig_type
  doc: Figure type for the plot. e.g. --figtype svg. Default is "pdf"
  type: string
  inputBinding:
    prefix: --figtype
- id: fig_size
  doc: FIGSIZE Figure size for the output plot (width,height). e.g.  --figsize 8 8
  type: string
  inputBinding:
    prefix: --figsize
- id: dpi
  doc: 'Dots-per-inch (DPI) for the output. Default is: "300".'
  type: string
  inputBinding:
    prefix: --dpi
- id: script_only
  doc: Set to generate Rscript only, if R/Corrplot package are not installed. Default
    is "False".
  type: boolean
  inputBinding:
    prefix: --scriptonly
- id: test
  doc: This will run the program on test data.
  type: boolean
  inputBinding:
    prefix: --test
outputs: []
cwlVersion: v1.1
baseCommand:
- intervene
- pairwise
