class: CommandLineTool
id: intervene_venn.cwl
inputs:
- id: i
  doc: '[INPUT [INPUT ...]], --input [INPUT [INPUT ...]] Input genomic regions in
    (BED/GTF/GFF) format or lists of genes/SNPs IDs. For files in a directory use
    *.<extension>. e.g. *.bed'
  type: boolean
  inputBinding:
    prefix: -i
- id: type
  doc: Type of input sets. Genomic regions or lists of genes/SNPs. Default is "genomic"
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
  doc: Use file names as labels instead. Default is "False"
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
  doc: Save overlapping regions/names for all the combinations as bed/txt. Default
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
- id: title
  doc: Title of the plot. By default it is not set.
  type: string
  inputBinding:
    prefix: --title
- id: project
  doc: 'Project name for the output. Default is: "Intervene"'
  type: string
  inputBinding:
    prefix: --project
- id: colors
  doc: Comma-separated list of matplotlib-valid colors for fill. E.g., --colors=r,b,k
  type: string
  inputBinding:
    prefix: --colors
- id: border_colors
  doc: A matplotlib-valid color for venn borders. E.g., --bordercolor=red
  type: string
  inputBinding:
    prefix: --bordercolors
- id: fig_type
  doc: Figure type for the plot. e.g. --figtype svg. Default is "pdf"
  type: string
  inputBinding:
    prefix: --figtype
- id: fig_size
  doc: FIGSIZE Figure size as width and height.e.g. --figsize 12 12.
  type: string
  inputBinding:
    prefix: --figsize
- id: font_size
  doc: 'Font size for the plot labels.Default is: "14"'
  type: string
  inputBinding:
    prefix: --fontsize
- id: dpi
  doc: 'Dots-per-inch (DPI) for the output. Default is: "300"'
  type: string
  inputBinding:
    prefix: --dpi
- id: fill
  doc: Report number or  percentage of overlaps (Only if --type=list). Default is
    "number"
  type: string
  inputBinding:
    prefix: --fill
- id: test
  doc: This will run the program on test data.
  type: boolean
  inputBinding:
    prefix: --test
outputs: []
cwlVersion: v1.1
baseCommand:
- intervene
- venn
