class: CommandLineTool
id: intervene_upset.cwl
inputs:
- id: in_input_genomic_regions
  doc: "[INPUT [INPUT ...]], --input [INPUT [INPUT ...]]\nInput genomic regions in\
    \ (BED/GTF/GFF) format or lists of genes/SNPs IDs.\nFor files in a directory use\
    \ *.<extension>. e.g. *.bed"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_type
  doc: Type of input sets. Genomic regions or lists of genes/SNPs sets. Default is
    "genomic".
  type: string?
  inputBinding:
    prefix: --type
- id: in_names
  doc: "Comma-separated list of names as labels for input files.\nIf it is not set\
    \ file names will be used as labels.\nFor example: --names=A,B,C,D,E,F"
  type: File?
  inputBinding:
    prefix: --names
- id: in_filenames
  doc: Use file names as labels instead. Default is "False".
  type: boolean?
  inputBinding:
    prefix: --filenames
- id: in_bed_tools_options
  doc: "List any of the arguments available for bedtools intersect command.\nType\
    \ bedtools intersect --help to view all the options.\nFor example: --bedtools-options\
    \ f=0.8,r,etc"
  type: double?
  inputBinding:
    prefix: --bedtools-options
- id: in_output
  doc: Output folder path where results will be stored. Default is current working
    directory.
  type: File?
  inputBinding:
    prefix: --output
- id: in_save_overlaps
  doc: Save overlapping regions/names for all the combinations as bed/txt.Default
    is "False".
  type: boolean?
  inputBinding:
    prefix: --save-overlaps
- id: in_overlap_thresh
  doc: 'Minimum threshold to save the overlapping regions/names as bed/txt. Default
    is: "1"'
  type: long?
  inputBinding:
    prefix: --overlap-thresh
- id: in_project
  doc: 'Project name for the output. Default is: "Intervene"'
  type: string?
  inputBinding:
    prefix: --project
- id: in_order
  doc: The order of intersections of sets. e.g. --order degree. Default is "freq".
  type: string?
  inputBinding:
    prefix: --order
- id: in_n_inter
  doc: Number of top intersections to show in plot. Default is "30".
  type: long?
  inputBinding:
    prefix: --ninter
- id: in_show_zero
  doc: Show empty intersection combinations. Default is "False".
  type: boolean?
  inputBinding:
    prefix: --showzero
- id: in_show_size
  doc: Show intersection sizes above bars. Default is "True".
  type: boolean?
  inputBinding:
    prefix: --showsize
- id: in_mb_color
  doc: 'Color of the main bar plot. Default is: "#ea5d4e".'
  type: long?
  inputBinding:
    prefix: --mbcolor
- id: in_sb_color
  doc: 'Color of set size bar plot. Default is: "#317eab".'
  type: long?
  inputBinding:
    prefix: --sbcolor
- id: in_mb_label
  doc: 'The y-axis label of the intersection size bars. Default is: "No. of Intersections".'
  type: long?
  inputBinding:
    prefix: --mblabel
- id: in_sx_label
  doc: 'The x-axis label of the set size bars. Default is: "Set size".'
  type: long?
  inputBinding:
    prefix: --sxlabel
- id: in_fig_type
  doc: Figure type for the plot. e.g. --figtype svg. Default is "pdf"
  type: string?
  inputBinding:
    prefix: --figtype
- id: in_fig_size
  doc: "FIGSIZE\nFigure size for the output plot (width,height). e.g.  --figsize 14\
    \ 8"
  type: long?
  inputBinding:
    prefix: --figsize
- id: in_dpi
  doc: 'Dots-per-inch (DPI) for the output. Default is: "300".'
  type: long?
  inputBinding:
    prefix: --dpi
- id: in_script_only
  doc: Set to generate Rscript only, if R/UpSetR package is not installed. Default
    is "False".
  type: boolean?
  inputBinding:
    prefix: --scriptonly
- id: in_show_shiny
  doc: Print the combinations of intersections to input to Shiny App. Default is "False".
  type: boolean?
  inputBinding:
    prefix: --showshiny
- id: in_test
  doc: This will run the program on test data.
  type: boolean?
  inputBinding:
    prefix: --test
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output folder path where results will be stored. Default is current working
    directory.
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- intervene
- upset
