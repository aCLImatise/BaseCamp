class: CommandLineTool
id: intervene_pairwise.cwl
inputs:
- id: in_input_genomic_regions
  doc: "[INPUT [INPUT ...]], --input [INPUT [INPUT ...]]\nInput genomic regions in\
    \ (BED/GTF/GFF) format.\nFor files in a directory use *.<extension>. e.g. *.bed"
  type: boolean
  inputBinding:
    prefix: -i
- id: in_type
  doc: Type of input sets. Genomic regions or lists of genes/SNPs sets. Default is
    "genomic".
  type: string
  inputBinding:
    prefix: --type
- id: in_compute
  doc: "Compute count/fraction of overlaps or other statistical relationships.\ncount:\
    \ calculates the number of overlaps.\nfrac: calculates the fraction of overlap.\
    \ (Default)\njaccard: calculate the Jaccard statistic.\nreldist: calculate the\
    \ distribution of relative distances.\nfisher: calculate Fisher`s statistic.\n\
    Note: For jaccard and reldist regions should be pre-shorted or set --sort."
  type: string
  inputBinding:
    prefix: --compute
- id: in_bed_tools_options
  doc: "List any of the arguments available for bedtools subcommands: interset, jaccard,\
    \ fisher, reldist.\nType bedtools <subcommand> --help to view all the options.\n\
    For example: --bedtools-options f=0.8,r,etc"
  type: double
  inputBinding:
    prefix: --bedtools-options
- id: in_corr
  doc: "Compute the correlation.\nDefault is \"False\"."
  type: boolean
  inputBinding:
    prefix: --corr
- id: in_corr_type
  doc: "Select the type of correlation.\npearson: computes the Pearson correlation.\
    \ (Default)\nkendall: computes the Kendall correlation.\nspearman: computes the\
    \ Spearman correlation.\nNote: This only works if --corr is set."
  type: string
  inputBinding:
    prefix: --corrtype
- id: in_h_type
  doc: Heatmap plot type. Default is "tribar".
  type: string
  inputBinding:
    prefix: --htype
- id: in_triangle
  doc: Show lower/upper triangle of the matrix as heatmap if --htype=tribar. Default
    is "lower".
  type: string
  inputBinding:
    prefix: --triangle
- id: in_diagonal
  doc: "Show the diagonal values in the heatmap.\nDefault is \"False\"."
  type: boolean
  inputBinding:
    prefix: --diagonal
- id: in_names
  doc: "Comma-separated list of names as labels for input files.\nIf it is not set\
    \ file names will be used as labels.\nFor example: --names=A,B,C,D,E,F"
  type: File
  inputBinding:
    prefix: --names
- id: in_filenames
  doc: "Use file names as labels instead.\nDefault is \"False\"."
  type: boolean
  inputBinding:
    prefix: --filenames
- id: in_sort
  doc: "Set this only if your files are not sorted.\nDefault is \"False\"."
  type: boolean
  inputBinding:
    prefix: --sort
- id: in_genome
  doc: "Required argument if --compute=fisher.\nNeeds to be a string assembly name\
    \ like \"mm10\" or \"hg38\""
  type: string
  inputBinding:
    prefix: --genome
- id: in_output
  doc: "Output folder path where results will be stored.\nDefault is current working\
    \ directory."
  type: File
  inputBinding:
    prefix: --output
- id: in_project
  doc: 'Project name for the output. Default is: "Intervene"'
  type: string
  inputBinding:
    prefix: --project
- id: in_bar_label
  doc: x-axis label of boxplot if --htype=tribar. Default is "Set size"
  type: long
  inputBinding:
    prefix: --barlabel
- id: in_bar_color
  doc: Boxplot color (hex vlaue or name, e.g. blue). Default is "#53cfff".
  type: long
  inputBinding:
    prefix: --barcolor
- id: in_font_size
  doc: Label font size. Default is "8".
  type: long
  inputBinding:
    prefix: --fontsize
- id: in_title
  doc: Heatmap main title. Default is "Pairwise intersection".
  type: string
  inputBinding:
    prefix: --title
- id: in_space
  doc: White space between barplt and heatmap, if --htype=tribar. Default is "1.3".
  type: double
  inputBinding:
    prefix: --space
- id: in_fig_type
  doc: Figure type for the plot. e.g. --figtype svg. Default is "pdf"
  type: string
  inputBinding:
    prefix: --figtype
- id: in_fig_size
  doc: "FIGSIZE\nFigure size for the output plot (width,height). e.g.  --figsize 8\
    \ 8"
  type: long
  inputBinding:
    prefix: --figsize
- id: in_dpi
  doc: 'Dots-per-inch (DPI) for the output. Default is: "300".'
  type: long
  inputBinding:
    prefix: --dpi
- id: in_script_only
  doc: Set to generate Rscript only, if R/Corrplot package are not installed. Default
    is "False".
  type: boolean
  inputBinding:
    prefix: --scriptonly
- id: in_test
  doc: This will run the program on test data.
  type: boolean
  inputBinding:
    prefix: --test
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output folder path where results will be stored.\nDefault is current working\
    \ directory."
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- intervene
- pairwise
