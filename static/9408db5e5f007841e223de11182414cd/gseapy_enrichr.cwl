class: CommandLineTool
id: gseapy_enrichr.cwl
inputs:
- id: input_list
  doc: Enrichr uses a list of gene names as input.
  type: string
  inputBinding:
    prefix: --input-list
- id: gene_sets
  doc: Enrichr library name(s) required. Separate each name by comma.
  type: string
  inputBinding:
    prefix: --gene-sets
- id: organism
  doc: 'Enrichr supported organism name. Default: human. See here: https://amp.pharm.mssm.edu/modEnrichr.'
  type: string
  inputBinding:
    prefix: --organism
- id: description
  doc: It is recommended to enter a short description for your list so that multiple
    lists can be differentiated from each other if you choose to save or share your
    list.
  type: string
  inputBinding:
    prefix: --description
- id: cut_off
  doc: 'Adjust-Pval cutoff, used for generating plots. Default: 0.05.'
  type: double
  inputBinding:
    prefix: --cut-off
- id: background
  doc: 'BioMart Dataset name or Background total genes number. Default: None'
  type: string
  inputBinding:
    prefix: --background
- id: top_term
  doc: 'Numbers of top terms shown in the plot. Default: 10'
  type: long
  inputBinding:
    prefix: --top-term
- id: o
  doc: ', --outdir         The GSEApy output directory. Default: the current working
    directory'
  type: boolean
  inputBinding:
    prefix: -o
- id: f
  doc: ", --format         File extensions supported by Matplotlib active backend,\
    \ choose from {'pdf', 'png', 'jpeg','ps', 'eps','svg'}. Default: 'pdf'."
  type: boolean
  inputBinding:
    prefix: -f
- id: fs
  doc: 'height, --figsize width height The figsize keyword argument need two parameters
    to define. Default: (6.5, 6)'
  type: string
  inputBinding:
    prefix: --fs
- id: graph
  doc: 'Numbers of top graphs produced. Default: 20'
  type: long
  inputBinding:
    prefix: --graph
- id: no_plot
  doc: 'Speed up computing by suppressing the plot output.This is useful only if data
    are interested. Default: False.'
  type: boolean
  inputBinding:
    prefix: --no-plot
- id: verbose
  doc: Increase output verbosity, print out progress of your job
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- gseapy
- enrichr
