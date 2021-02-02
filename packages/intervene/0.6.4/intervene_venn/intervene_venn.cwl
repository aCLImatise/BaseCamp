class: CommandLineTool
id: intervene_venn.cwl
inputs:
- id: in_input_genomic_regions
  doc: "[INPUT [INPUT ...]], --input [INPUT [INPUT ...]]\nInput genomic regions in\
    \ (BED/GTF/GFF) format or lists of genes/SNPs IDs.\nFor files in a directory use\
    \ *.<extension>. e.g. *.bed"
  type: boolean
  inputBinding:
    prefix: -i
- id: in_type
  doc: Type of input sets. Genomic regions or lists of genes/SNPs. Default is "genomic"
  type: string
  inputBinding:
    prefix: --type
- id: in_names
  doc: "Comma-separated list of names as labels for input files.\nIf it is not set\
    \ file names will be used as labels.\nFor example: --names=A,B,C,D,E,F"
  type: File
  inputBinding:
    prefix: --names
- id: in_filenames
  doc: Use file names as labels instead. Default is "False"
  type: boolean
  inputBinding:
    prefix: --filenames
- id: in_bed_tools_options
  doc: "List any of the arguments available for bedtools intersect command.\nType\
    \ bedtools intersect --help to view all the options.\nFor example: --bedtools-options\
    \ f=0.8,r,etc"
  type: double
  inputBinding:
    prefix: --bedtools-options
- id: in_output
  doc: Output folder path where results will be stored. Default is current working
    directory.
  type: File
  inputBinding:
    prefix: --output
- id: in_save_overlaps
  doc: Save overlapping regions/names for all the combinations as bed/txt. Default
    is "False".
  type: boolean
  inputBinding:
    prefix: --save-overlaps
- id: in_overlap_thresh
  doc: 'Minimum threshold to save the overlapping regions/names as bed/txt. Default
    is: "1"'
  type: long
  inputBinding:
    prefix: --overlap-thresh
- id: in_title
  doc: Title of the plot. By default it is not set.
  type: string
  inputBinding:
    prefix: --title
- id: in_project
  doc: 'Project name for the output. Default is: "Intervene"'
  type: string
  inputBinding:
    prefix: --project
- id: in_colors
  doc: Comma-separated list of matplotlib-valid colors for fill. E.g., --colors=r,b,k
  type: string
  inputBinding:
    prefix: --colors
- id: in_border_colors
  doc: A matplotlib-valid color for venn borders. E.g., --bordercolor=red
  type: string
  inputBinding:
    prefix: --bordercolors
- id: in_fig_type
  doc: Figure type for the plot. e.g. --figtype svg. Default is "pdf"
  type: string
  inputBinding:
    prefix: --figtype
- id: in_fig_size
  doc: "FIGSIZE\nFigure size as width and height.e.g. --figsize 12 12."
  type: long
  inputBinding:
    prefix: --figsize
- id: in_font_size
  doc: 'Font size for the plot labels.Default is: "14"'
  type: long
  inputBinding:
    prefix: --fontsize
- id: in_dpi
  doc: 'Dots-per-inch (DPI) for the output. Default is: "300"'
  type: long
  inputBinding:
    prefix: --dpi
- id: in_fill
  doc: Report number or  percentage of overlaps (Only if --type=list). Default is
    "number"
  type: string
  inputBinding:
    prefix: --fill
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
  doc: Output folder path where results will be stored. Default is current working
    directory.
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- intervene
- venn
