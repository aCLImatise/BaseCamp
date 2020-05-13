class: CommandLineTool
id: clust.cwl
inputs:
- id: data_path
  doc: Data file path or directory with data file(s).
  type: string
  inputBinding:
    position: 0
- id: n
  doc: '[<file or int> ...] Normalisation file or list of codes (default: 1000)'
  type: File
  inputBinding:
    prefix: -n
- id: r
  doc: Replicates structure file
  type: File
  inputBinding:
    prefix: -r
- id: m
  doc: OrthoGroups (OGs) mapping file
  type: File
  inputBinding:
    prefix: -m
- id: o
  doc: Output directory
  type: Directory
  inputBinding:
    prefix: -o
- id: t
  doc: 'Cluster tightness (default: 1.0).'
  type: string
  inputBinding:
    prefix: -t
- id: base_methods
  doc: '[<string> ...] One or more base clustering methods (default: k-means)'
  type: string
  inputBinding:
    prefix: -basemethods
- id: k
  doc: '[<integer> ...] K values, e.g. 2 4 6 10 ... (default: 4 to 20 (step=4))'
  type: long
  inputBinding:
    prefix: -K
- id: s
  doc: 'Outlier standard deviations (default: 3.0)'
  type: string
  inputBinding:
    prefix: -s
- id: d
  doc: 'Min datasets in which a gene must exist (default: 1)'
  type: long
  inputBinding:
    prefix: -d
- id: fil_v
  doc: 'Filtering: gene expression threshold (default: -inf)'
  type: string
  inputBinding:
    prefix: -fil-v
- id: fil_c
  doc: 'Filtering: number of conditions (default: 0)'
  type: long
  inputBinding:
    prefix: -fil-c
- id: fil_d
  doc: 'Filtering: number of datasets (default: 0)'
  type: long
  inputBinding:
    prefix: -fil-d
- id: fil_abs
  doc: Filter using absolute values of expression
  type: boolean
  inputBinding:
    prefix: --fil-abs
- id: fil_perc
  doc: -fil-v is a percentile of genes rather than raw value
  type: boolean
  inputBinding:
    prefix: --fil-perc
- id: fil_flat
  doc: Filter out genes with flat expression profiles (default)
  type: boolean
  inputBinding:
    prefix: --fil-flat
- id: no_fil_flat
  doc: Cancels the default --fil-flat option
  type: boolean
  inputBinding:
    prefix: --no-fil-flat
- id: cs
  doc: 'Smallest cluster size (default: 11)'
  type: long
  inputBinding:
    prefix: -cs
- id: q3s
  doc: 'Q3s defining outliers (default: 2.0)'
  type: string
  inputBinding:
    prefix: -q3s
- id: no_optimisation
  doc: Skip cluster optimsation & completion
  type: boolean
  inputBinding:
    prefix: --no-optimisation
- id: deterministic
  doc: Obsolete. All steps are already deterministic (v1.7.4+)
  type: boolean
  inputBinding:
    prefix: --deterministic
- id: np
  doc: 'Obsolete. Number of parallel processes (default: 1)'
  type: long
  inputBinding:
    prefix: -np
outputs: []
cwlVersion: v1.1
baseCommand:
- clust
