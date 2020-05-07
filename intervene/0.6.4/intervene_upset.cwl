class: CommandLineTool
id: intervene_upset.cwl
inputs:
- id: i
  doc: '[INPUT [INPUT ...]], --input [INPUT [INPUT ...]] Input genomic regions in
    (BED/GTF/GFF) format or lists of genes/SNPs IDs. For files in a directory use
    *.<extension>. e.g. *.bed'
  type: boolean
  inputBinding:
    prefix: -i
- id: type
  doc: Type of input sets. Genomic regions or lists of genes/SNPs sets. Default is
    "genomic".
  type: string
  inputBinding:
    prefix: --type
- id: names
  doc: 'Comma-separated list of names as labels for input files. If it is not set
    file names will be used as labels. For example: --names=A,B,C,D,E,F'
  type: string
  inputBinding:
    prefix: --names
- id: filenames
  doc: Use file names as labels instead. Default is "False".
  type: boolean
  inputBinding:
    prefix: --filenames
- id: bed_tools_options
  doc: 'List any of the arguments available for bedtools intersect command. Type bedtools
    intersect --help to view all the options. For example: --bedtools-options f=0.8,r,etc'
  type: string
  inputBinding:
    prefix: --bedtools-options
- id: output
  doc: Output folder path where results will be stored. Default is current working
    directory.
  type: string
  inputBinding:
    prefix: --output
- id: save_overlaps
  doc: Save overlapping regions/names for all the combinations as bed/txt.Default
    is "False".
  type: boolean
  inputBinding:
    prefix: --save-overlaps
- id: overlap_thresh
  doc: 'Minimum threshold to save the overlapping regions/names as bed/txt. Default
    is: "1"'
  type: string
  inputBinding:
    prefix: --overlap-thresh
- id: project
  doc: 'Project name for the output. Default is: "Intervene"'
  type: string
  inputBinding:
    prefix: --project
- id: order
  doc: The order of intersections of sets. e.g. --order degree. Default is "freq".
  type: string
  inputBinding:
    prefix: --order
- id: n_inter
  doc: Number of top intersections to show in plot. Default is "30".
  type: string
  inputBinding:
    prefix: --ninter
- id: show_zero
  doc: Show empty intersection combinations. Default is "False".
  type: boolean
  inputBinding:
    prefix: --showzero
- id: show_size
  doc: Show intersection sizes above bars. Default is "True".
  type: boolean
  inputBinding:
    prefix: --showsize
- id: mb_color
  doc: 'Color of the main bar plot. Default is: "#ea5d4e".'
  type: string
  inputBinding:
    prefix: --mbcolor
- id: sb_color
  doc: 'Color of set size bar plot. Default is: "#317eab".'
  type: string
  inputBinding:
    prefix: --sbcolor
- id: mb_label
  doc: 'The y-axis label of the intersection size bars. Default is: "No. of Intersections".'
  type: string
  inputBinding:
    prefix: --mblabel
- id: sx_label
  doc: 'The x-axis label of the set size bars. Default is: "Set size".'
  type: string
  inputBinding:
    prefix: --sxlabel
- id: fig_type
  doc: Figure type for the plot. e.g. --figtype svg. Default is "pdf"
  type: string
  inputBinding:
    prefix: --figtype
- id: fig_size
  doc: FIGSIZE Figure size for the output plot (width,height). e.g.  --figsize 14
    8
  type: string
  inputBinding:
    prefix: --figsize
- id: dpi
  doc: 'Dots-per-inch (DPI) for the output. Default is: "300".'
  type: string
  inputBinding:
    prefix: --dpi
- id: script_only
  doc: Set to generate Rscript only, if R/UpSetR package is not installed. Default
    is "False".
  type: boolean
  inputBinding:
    prefix: --scriptonly
- id: show_shiny
  doc: Print the combinations of intersections to input to Shiny App. Default is "False".
  type: boolean
  inputBinding:
    prefix: --showshiny
- id: test
  doc: This will run the program on test data.
  type: boolean
  inputBinding:
    prefix: --test
outputs: []
cwlVersion: v1.1
baseCommand:
- intervene
- upset
