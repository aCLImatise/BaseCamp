class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/TE.py.cwl
inputs:
- id: text_file_describing
  doc: Text file describing experiment Outline. Must follow required format, please
    see the manual.
  type: string
  inputBinding:
    prefix: -e
- id: text_file_containing
  doc: Text file containing the count data. Header line must be consistent with information
    in experiment Outline.
  type: string
  inputBinding:
    prefix: -c
- id: tab_delimited_file
  doc: Tab delimited text file containing the results.
  type: string
  inputBinding:
    prefix: -o
- id: allow_different_dispersions
  doc: 'Allow different dispersions for Ribo-seq and RNA-seq count data. Off: 0; On:
    1. [default: 0]'
  type: string
  inputBinding:
    prefix: -d
- id: set_sum_count
  doc: 'Set the sum of normalized read count as the threshold to do the test. This
    option applies for both Ribo-seq and RNA-seq data. [default: 10]'
  type: string
  inputBinding:
    prefix: -s
- id: set_initial_dispersion
  doc: 'Set the initial dispersion to start the estimation. [default: 0.01]'
  type: string
  inputBinding:
    prefix: -i
- id: method_multiple_test
  doc: 'Method for multiple test correction. Options: BH (Benjamini-Hochberg); Bonferroni.
    [default: BH]'
  type: string
  inputBinding:
    prefix: -m
- id: rank_result_table
  doc: 'Rank the result table in ascending order by a specific column. Adjusted p
    value: 1; TE change: 2; Gene id: 3; Keep the order as in count file: 0. [default:
    0]'
  type: string
  inputBinding:
    prefix: -r
- id: make_plots_show
  doc: 'Make plots to show the data and results. Plots are in pdf format. On: 1; Off:
    0. [default: 0]'
  type: string
  inputBinding:
    prefix: -p
- id: set_fdr_cutoff
  doc: 'Set the FDR cutoff for significant case to plot. [default: 0.1]'
  type: string
  inputBinding:
    prefix: -q
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- TE.py
