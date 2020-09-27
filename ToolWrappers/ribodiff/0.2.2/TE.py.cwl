class: CommandLineTool
id: TE.py.cwl
inputs:
- id: in_text_file_describing
  doc: "Text file describing experiment Outline. Must follow\nrequired format, please\
    \ see the manual."
  type: File
  inputBinding:
    prefix: -e
- id: in_text_file_containing
  doc: "Text file containing the count data. Header line must be\nconsistent with\
    \ information in experiment Outline."
  type: File
  inputBinding:
    prefix: -c
- id: in_tab_delimited_file
  doc: Tab delimited text file containing the results.
  type: File
  inputBinding:
    prefix: -o
- id: in_allow_different_dispersions
  doc: "Allow different dispersions for Ribo-seq and RNA-seq\ncount data. Off: 0;\
    \ On: 1. [default: 0]"
  type: long
  inputBinding:
    prefix: -d
- id: in_set_sum_todo
  doc: "Set the sum of normalized read count as the threshold to\ndo the test. This\
    \ option applies for both Ribo-seq and\nRNA-seq data. [default: 10]"
  type: long
  inputBinding:
    prefix: -s
- id: in_set_initial_dispersion
  doc: "Set the initial dispersion to start the estimation.\n[default: 0.01]"
  type: double
  inputBinding:
    prefix: -i
- id: in_method_multiple_test
  doc: "Method for multiple test correction. Options: BH\n(Benjamini-Hochberg); Bonferroni.\
    \ [default: BH]"
  type: string
  inputBinding:
    prefix: -m
- id: in_rank_result_table
  doc: "Rank the result table in ascending order by a specific\ncolumn. Adjusted p\
    \ value: 1; TE change: 2; Gene id: 3;\nKeep the order as in count file: 0. [default:\
    \ 0]"
  type: File
  inputBinding:
    prefix: -r
- id: in_make_plots_show
  doc: "Make plots to show the data and results. Plots are in pdf\nformat. On: 1;\
    \ Off: 0. [default: 0]"
  type: long
  inputBinding:
    prefix: -p
- id: in_set_fdr_cutoff
  doc: "Set the FDR cutoff for significant case to plot.\n[default: 0.1]\n"
  type: double
  inputBinding:
    prefix: -q
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- TE.py
