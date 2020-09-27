class: CommandLineTool
id: pauvre_synplot.cwl
inputs:
- id: in_quiet
  doc: Do not output warnings to stderr
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_aln_dir
  doc: The directory where all the fasta alignments are
  type: Directory
  inputBinding:
    prefix: --aln_dir
- id: in_dpi
  doc: Change the dpi from the default 600 if you need it
  type: long
  inputBinding:
    prefix: --dpi
- id: in_gff_paths
  doc: "The input filepath. for the gff annotation to plot.\nIndividual filepaths\
    \ separated by spaces. For example,\n--gff_paths sp1.gff sp2.gff sp3.gff"
  type: string[]
  inputBinding:
    prefix: --gff_paths
- id: in_gff_labels
  doc: "In case the gff names and sequence names don't match,\nchange the labels that\
    \ will appear over the text."
  type: string[]
  inputBinding:
    prefix: --gff_labels
- id: in_no_timestamp
  doc: Turn off time stamps in the filename output.
  type: File
  inputBinding:
    prefix: --no_timestamp
- id: in_optimum_order
  doc: "If selected, this doesn't plot the optimum arrangement\nof things as they\
    \ are input into gff_paths. Instead,\nit uses the first gff file as the top-most\
    \ sequence in\nthe plot, and reorganizes the remaining gff files to\nminimize\
    \ the number of intersections."
  type: boolean
  inputBinding:
    prefix: --optimum_order
- id: in_output_basename
  doc: "Specify a base name for the output file(s). The input\nfile base name is the\
    \ default."
  type: File
  inputBinding:
    prefix: --output-basename
- id: in_ratio
  doc: "Enter the dimensions (arbitrary units) to plot the\nfigure. For example a\
    \ figure that is seven times wider\nthan tall is: --ratio 7 1"
  type: string[]
  inputBinding:
    prefix: --ratio
- id: in_sandwich
  doc: "Put an additional copy of the first gff file on the\nbottom of the plot for\
    \ comparison."
  type: boolean
  inputBinding:
    prefix: --sandwich
- id: in_start_with_aligned_genes
  doc: "Minimizes the number of intersections but only selects\ncombos where the first\
    \ gene in each sequence is\naligned."
  type: boolean
  inputBinding:
    prefix: --start_with_aligned_genes
- id: in_stop_codons
  doc: "Performs some internal corrections if the gff\nannotation includes the stop\
    \ codons in the coding\nsequences."
  type: boolean
  inputBinding:
    prefix: --stop_codons
- id: in_transparent
  doc: "Specify this option if you DON'T want a transparent\nbackground. Default is\
    \ on.\n"
  type: boolean
  inputBinding:
    prefix: --transparent
- id: in_center_on
  doc: ''
  type: string
  inputBinding:
    prefix: --center_on
- id: in_contained_dot
  doc: --center_on CENTER_ON
  type: string
  inputBinding:
    position: 0
- id: in_higher
  doc: --fileform {png,pdf,eps,jpeg,jpg,pdf,pgf,ps,raw,rgba,svg,svgz,tif,tiff} [{png,pdf,eps,jpeg,jpg,pdf,pgf,ps,raw,rgba,svg,svgz,tif,tiff}
    ...]
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_no_timestamp
  doc: Turn off time stamps in the filename output.
  type: File
  outputBinding:
    glob: $(inputs.in_no_timestamp)
cwlVersion: v1.1
baseCommand:
- pauvre
- synplot
