#!/usr/bin/env cwl-runner

baseCommand:
- clust
class: CommandLineTool
cwlVersion: v1.0
id: clust
inputs:
- doc: Data file path or directory with data file(s).
  id: data_path
  inputBinding:
    position: 0
  type: string
- doc: '[<file or int> ...] Normalisation file or list of codes (default: 1000)'
  id: n
  inputBinding:
    prefix: -n
  type: File
- doc: Replicates structure file
  id: r
  inputBinding:
    prefix: -r
  type: File
- doc: OrthoGroups (OGs) mapping file
  id: m
  inputBinding:
    prefix: -m
  type: File
- doc: Output directory
  id: o
  inputBinding:
    prefix: -o
  type: Directory
- doc: 'Cluster tightness (default: 1.0).'
  id: t
  inputBinding:
    prefix: -t
  type: string
- doc: '[<string> ...] One or more base clustering methods (default: k-means)'
  id: base_methods
  inputBinding:
    prefix: -basemethods
  type: string
- doc: '[<integer> ...] K values, e.g. 2 4 6 10 ... (default: 4 to 20 (step=4))'
  id: k
  inputBinding:
    prefix: -K
  type: long
- doc: 'Outlier standard deviations (default: 3.0)'
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: 'Min datasets in which a gene must exist (default: 1)'
  id: d
  inputBinding:
    prefix: -d
  type: long
- doc: 'Filtering: gene expression threshold (default: -inf)'
  id: fil_v
  inputBinding:
    prefix: -fil-v
  type: string
- doc: 'Filtering: number of conditions (default: 0)'
  id: fil_c
  inputBinding:
    prefix: -fil-c
  type: long
- doc: 'Filtering: number of datasets (default: 0)'
  id: fil_d
  inputBinding:
    prefix: -fil-d
  type: long
- doc: Filter using absolute values of expression
  id: fil_abs
  inputBinding:
    prefix: --fil-abs
  type: boolean
- doc: -fil-v is a percentile of genes rather than raw value
  id: fil_perc
  inputBinding:
    prefix: --fil-perc
  type: boolean
- doc: Filter out genes with flat expression profiles (default)
  id: fil_flat
  inputBinding:
    prefix: --fil-flat
  type: boolean
- doc: Cancels the default --fil-flat option
  id: no_fil_flat
  inputBinding:
    prefix: --no-fil-flat
  type: boolean
- doc: 'Smallest cluster size (default: 11)'
  id: cs
  inputBinding:
    prefix: -cs
  type: long
- doc: 'Q3s defining outliers (default: 2.0)'
  id: q3s
  inputBinding:
    prefix: -q3s
  type: string
- doc: Skip cluster optimsation & completion
  id: no_optimisation
  inputBinding:
    prefix: --no-optimisation
  type: boolean
- doc: Obsolete. All steps are already deterministic (v1.7.4+)
  id: deterministic
  inputBinding:
    prefix: --deterministic
  type: boolean
- doc: 'Obsolete. Number of parallel processes (default: 1)'
  id: np
  inputBinding:
    prefix: -np
  type: long
