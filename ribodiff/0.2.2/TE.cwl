class: CommandLineTool
id: TE.py.cwl
inputs:
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: e
  doc: Text file describing experiment Outline. Must follow required format, please
    see the manual.
  type: string
  inputBinding:
    prefix: -e
- id: c
  doc: Text file containing the count data. Header line must be consistent with information
    in experiment Outline.
  type: string
  inputBinding:
    prefix: -c
- id: o
  doc: Tab delimited text file containing the results.
  type: string
  inputBinding:
    prefix: -o
- id: d
  doc: 'Allow different dispersions for Ribo-seq and RNA-seq count data. Off: 0; On:
    1. [default: 0]'
  type: string
  inputBinding:
    prefix: -d
- id: s
  doc: 'Set the sum of normalized read count as the threshold to do the test. This
    option applies for both Ribo-seq and RNA-seq data. [default: 10]'
  type: string
  inputBinding:
    prefix: -s
- id: i
  doc: 'Set the initial dispersion to start the estimation. [default: 0.01]'
  type: string
  inputBinding:
    prefix: -i
- id: m
  doc: 'Method for multiple test correction. Options: BH (Benjamini-Hochberg); Bonferroni.
    [default: BH]'
  type: string
  inputBinding:
    prefix: -m
- id: r
  doc: 'Rank the result table in ascending order by a specific column. Adjusted p
    value: 1; TE change: 2; Gene id: 3; Keep the order as in count file: 0. [default:
    0]'
  type: string
  inputBinding:
    prefix: -r
- id: p
  doc: 'Make plots to show the data and results. Plots are in pdf format. On: 1; Off:
    0. [default: 0]'
  type: string
  inputBinding:
    prefix: -p
- id: q
  doc: 'Set the FDR cutoff for significant case to plot. [default: 0.1]'
  type: string
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- TE.py
