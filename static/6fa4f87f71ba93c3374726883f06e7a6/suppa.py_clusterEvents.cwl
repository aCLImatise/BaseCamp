class: CommandLineTool
id: suppa.py_clusterEvents.cwl
inputs:
- id: in_dps_i
  doc: Input file of delta-PSI values (.dpsi format)
  type: File
  inputBinding:
    prefix: --dpsi
- id: in_psi_vec
  doc: Input file with PSI values (.psivec format)
  type: File
  inputBinding:
    prefix: --psivec
- id: in_sig_threshold
  doc: "P-value cut-off for significant events. (Default:\n0.05)."
  type: double
  inputBinding:
    prefix: --sig-threshold
- id: in_dps_i_threshold
  doc: "Lower-bound for the absolute delta PSI value to\ncluster. (Default: 0.05)."
  type: double
  inputBinding:
    prefix: --dpsi-threshold
- id: in_eps
  doc: "Maximum (Euclidean) distance (between 0 and 1) to\nconsider two events as\
    \ members of the same cluster.\n(Default: 0.05)."
  type: double
  inputBinding:
    prefix: --eps
- id: in_separation
  doc: "Minimum separation for considering two points in\ndifferent clusters. (Default:\
    \ 0)."
  type: long
  inputBinding:
    prefix: --separation
- id: in_min_pts
  doc: "Minimum number of events required per cluster.\n(Default: 20)."
  type: long
  inputBinding:
    prefix: --min-pts
- id: in_metric
  doc: "Distance function to be used.Options: euclidean\n(Default), manhattan, cosine."
  type: string
  inputBinding:
    prefix: --metric
- id: in_clustering
  doc: "Clustering method to use.Options: OPTICS , DBSCAN\n(Default)."
  type: string
  inputBinding:
    prefix: --clustering
- id: in_ranges_column_numbers
  doc: "[INDEXES [INDEXES ...]], --groups [INDEXES [INDEXES ...]]\nRanges of column\
    \ numbers specifying the replicates per\ncondition. Column numbers have to be\
    \ continuous, with\nno overlapping or missing columns between them. Ex:\n1-3,4-6"
  type: boolean
  inputBinding:
    prefix: -g
- id: in_output
  doc: "Name of the output file.\n"
  type: File
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Name of the output file.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- suppa.py
- clusterEvents
