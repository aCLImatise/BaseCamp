#!/usr/bin/env cwl-runner

baseCommand:
- graphembed
class: CommandLineTool
cwlVersion: v1.0
id: graphembed
inputs:
- doc: Specify input data file in CSV format.
  id: i
  inputBinding:
    prefix: -i
  type: File
- doc: Specify classes data file in CSV format.
  id: t
  inputBinding:
    prefix: -t
  type: File
- doc: 'Output directory name [default: out].'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: 'Confidence bias for clustering [default: 1.0].'
  id: class_confidence
  inputBinding:
    prefix: --class_confidence
  type: string
- doc: 'Number of links towards closest neighbors with same class [default: 5].'
  id: k
  inputBinding:
    prefix: -k
  type: string
- doc: 'Number of links towards denser neighbors with a different class [default:
    1]'
  id: d
  inputBinding:
    prefix: -d
  type: string
- doc: 'Number of nearest neighbors to limit the horizon to limit search of denser
    neighbors of a different class [default: 10]'
  id: z
  inputBinding:
    prefix: -z
  type: string
- doc: 'Number of mutual nearest neighbors that define outlier instances [default:
    0]'
  id: l
  inputBinding:
    prefix: -l
  type: string
- doc: Convert data matrix to normalized matrix.
  id: normalization
  inputBinding:
    prefix: --normalization
  type: boolean
- doc: Select most discriminative features.
  id: feature_selection
  inputBinding:
    prefix: --feature_selection
  type: boolean
- doc: Convert data matrix to corr coeff matrix.
  id: correlation_transformation
  inputBinding:
    prefix: --correlation_transformation
  type: boolean
- doc: 'Min num instances per class [default: 5]'
  id: min_threshold
  inputBinding:
    prefix: --min_threshold
  type: string
- doc: 'Max num instances per class [default: 400]'
  id: max_threshold
  inputBinding:
    prefix: --max_threshold
  type: string
- doc: 'Random seed [default: 1]'
  id: random_state
  inputBinding:
    prefix: --random_state
  type: string
- doc: Display graphs on terminal.
  id: display
  inputBinding:
    prefix: --display
  type: boolean
- doc: 'Figure size [default: 15].'
  id: figure_size
  inputBinding:
    prefix: --figure_size
  type: string
- doc: 'Color scheme [default: gist_ncar].'
  id: cmap_name
  inputBinding:
    prefix: --cmap_name
  type: string
- doc: Do not use timestamp as suffix for output directory name.
  id: do_not_add_timestamp
  inputBinding:
    prefix: --do_not_add_timestamp
  type: boolean
- doc: Print more text.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
