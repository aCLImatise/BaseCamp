#!/usr/bin/env cwl-runner

baseCommand:
- TE.py
class: CommandLineTool
cwlVersion: v1.0
id: te.py
inputs:
- doc: ''
  id: arguments
  inputBinding:
    position: 0
  type: string
- doc: Text file describing experiment Outline. Must follow required format, please
    see the manual.
  id: e
  inputBinding:
    prefix: -e
  type: string
- doc: Text file containing the count data. Header line must be consistent with information
    in experiment Outline.
  id: c
  inputBinding:
    prefix: -c
  type: string
- doc: Tab delimited text file containing the results.
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: 'Allow different dispersions for Ribo-seq and RNA-seq count data. Off: 0; On:
    1. [default: 0]'
  id: d
  inputBinding:
    prefix: -d
  type: string
- doc: 'Set the sum of normalized read count as the threshold to do the test. This
    option applies for both Ribo-seq and RNA-seq data. [default: 10]'
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: 'Set the initial dispersion to start the estimation. [default: 0.01]'
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: 'Method for multiple test correction. Options: BH (Benjamini-Hochberg); Bonferroni.
    [default: BH]'
  id: m
  inputBinding:
    prefix: -m
  type: string
- doc: 'Rank the result table in ascending order by a specific column. Adjusted p
    value: 1; TE change: 2; Gene id: 3; Keep the order as in count file: 0. [default:
    0]'
  id: r
  inputBinding:
    prefix: -r
  type: string
- doc: 'Make plots to show the data and results. Plots are in pdf format. On: 1; Off:
    0. [default: 0]'
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: 'Set the FDR cutoff for significant case to plot. [default: 0.1]'
  id: q
  inputBinding:
    prefix: -q
  type: string
