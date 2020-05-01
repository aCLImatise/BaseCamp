#!/usr/bin/env cwl-runner

baseCommand:
- modulated_modularity_clustering.py
class: CommandLineTool
cwlVersion: v1.0
id: modulated_modularity_clustering.py
inputs:
- doc: Input dataset in wide format.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: Design file.
  id: design
  inputBinding:
    prefix: --design
  type: string
- doc: Nam of the column with unique identifiers.
  id: id
  inputBinding:
    prefix: --ID
  type: string
- doc: Compute correlation coefficients using either 'pearson' (standard correlation
    coefficient), 'kendall' (Kendall Tau correlation coefficient), or 'spearman' (Spearman
    rank correlation).
  id: correlation
  inputBinding:
    prefix: --correlation
  type: string
- doc: 'Low value of sigma (Default: 0.05).'
  id: sigma_low
  inputBinding:
    prefix: --sigmaLow
  type: string
- doc: 'High value of sigma (Default: 0.50).'
  id: sigma_high
  inputBinding:
    prefix: --sigmaHigh
  type: string
- doc: 'Number of values of sigma to search (Default: 451).'
  id: sigma_num
  inputBinding:
    prefix: --sigmaNum
  type: string
- doc: MMC Heatmaps
  id: figure
  inputBinding:
    prefix: --figure
  type: string
- doc: Output TSV name
  id: out
  inputBinding:
    prefix: --out
  type: string
- doc: Name of the palette to use.
  id: palette
  inputBinding:
    prefix: --palette
  type: string
- doc: Name of a valid color scheme on the selected palette
  id: color
  inputBinding:
    prefix: --color
  type: string
