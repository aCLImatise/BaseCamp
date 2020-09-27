class: CommandLineTool
id: gseapy_enrichr.cwl
inputs:
- id: in_input_list
  doc: Enrichr uses a list of gene names as input.
  type: string
  inputBinding:
    prefix: --input-list
- id: in_gene_sets
  doc: "Enrichr library name(s) required. Separate each name\nby comma."
  type: string
  inputBinding:
    prefix: --gene-sets
- id: in_organism
  doc: "Enrichr supported organism name. Default: human. See\nhere: https://amp.pharm.mssm.edu/modEnrichr."
  type: string
  inputBinding:
    prefix: --organism
- id: in_description
  doc: "It is recommended to enter a short description for\nyour list so that multiple\
    \ lists can be differentiated\nfrom each other if you choose to save or share\
    \ your\nlist."
  type: string
  inputBinding:
    prefix: --description
- id: in_cut_off
  doc: "Adjust-Pval cutoff, used for generating plots.\nDefault: 0.05."
  type: double
  inputBinding:
    prefix: --cut-off
- id: in_background
  doc: "BioMart Dataset name or Background total genes number.\nDefault: None"
  type: long
  inputBinding:
    prefix: --background
- id: in_top_term
  doc: 'Numbers of top terms shown in the plot. Default: 10'
  type: long
  inputBinding:
    prefix: --top-term
- id: in__outdir_gseapy
  doc: ", --outdir         The GSEApy output directory. Default: the current\nworking\
    \ directory"
  type: Directory
  inputBinding:
    prefix: -o
- id: in__format_file
  doc: ", --format         File extensions supported by Matplotlib active\nbackend,\
    \ choose from {'pdf', 'png', 'jpeg','ps',\n'eps','svg'}. Default: 'pdf'."
  type: boolean
  inputBinding:
    prefix: -f
- id: in_fs
  doc: "height, --figsize width height\nThe figsize keyword argument need two parameters\
    \ to\ndefine. Default: (6.5, 6)"
  type: double
  inputBinding:
    prefix: --fs
- id: in_graph
  doc: 'Numbers of top graphs produced. Default: 20'
  type: long
  inputBinding:
    prefix: --graph
- id: in_no_plot
  doc: "Speed up computing by suppressing the plot output.This\nis useful only if\
    \ data are interested. Default: False."
  type: boolean
  inputBinding:
    prefix: --no-plot
- id: in_verbose
  doc: "Increase output verbosity, print out progress of your\njob\n"
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__outdir_gseapy
  doc: ", --outdir         The GSEApy output directory. Default: the current\nworking\
    \ directory"
  type: Directory
  outputBinding:
    glob: $(inputs.in__outdir_gseapy)
cwlVersion: v1.1
baseCommand:
- gseapy
- enrichr
