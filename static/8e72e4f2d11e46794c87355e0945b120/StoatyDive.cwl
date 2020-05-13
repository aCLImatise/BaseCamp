class: CommandLineTool
id: StoatyDive.py.cwl
inputs:
- id: a
  doc: '*.bed, --input_bed *.bed Path to the peak file in bed6 format.'
  type: boolean
  inputBinding:
    prefix: -a
- id: b
  doc: '*.bam/*.bed, --input_bam *.bam/*.bed Path to the read file used for the peak
    calling in bed or bam format.'
  type: boolean
  inputBinding:
    prefix: -b
- id: c
  doc: '*.txt, --chr_file *.txt Path to the chromosome length file.'
  type: boolean
  inputBinding:
    prefix: -c
- id: o
  doc: '/, --output_folder path/ Write results to this path. [Default: Operating Path]'
  type: File
  inputBinding:
    prefix: -o
- id: thresh
  doc: 'Set a normalized CV threshold to divide the peak profiles into more specific
    (0) and more unspecific (1). [Default: 1.0]'
  type: double
  inputBinding:
    prefix: --thresh
- id: peak_correction
  doc: Activate peak correction. The peaks are recentered (shifted) for the correct
    sumit.
  type: boolean
  inputBinding:
    prefix: --peak_correction
- id: max_translocate
  doc: Set this flag if you want to shift the peak profiles based on the maximum value
    inside the profile instead of a Gaussian blur translocation.
  type: boolean
  inputBinding:
    prefix: --max_translocate
- id: peak_length
  doc: Set maximum peak length for the constant peak length.
  type: long
  inputBinding:
    prefix: --peak_length
- id: max_norm_value
  doc: Provide a maximum value for CV to make the normalized CV plot more comparable.
  type: double
  inputBinding:
    prefix: --max_norm_value
- id: border_penalty
  doc: Adds a penalty for non-centered peaks.
  type: boolean
  inputBinding:
    prefix: --border_penalty
- id: scale_max
  doc: Provide a maximum value for the CV plot.
  type: double
  inputBinding:
    prefix: --scale_max
- id: max_cl
  doc: 'Maximal number of clusters of the kmeans clustering of the peak profiles.
    The algorithm will be optimized, i.e., the parameter is just a constraint and
    not absolute. [Default: 15]'
  type: long
  inputBinding:
    prefix: --maxcl
- id: num_cl
  doc: You can forcefully set the number of cluster of peak profiles.
  type: long
  inputBinding:
    prefix: --numcl
- id: sm
  doc: Turn on the peak profile smoothing for the peak profile classification. It
    is recommended to turn it on.
  type: boolean
  inputBinding:
    prefix: --sm
- id: lam
  doc: 'Parameter for the peak profile classification. Set lambda for the smoothing
    of the peak profiles. A higher value (> default) will underfit. A lower value
    (< default) will overfit. [Default: 0.3]'
  type: double
  inputBinding:
    prefix: --lam
- id: turn_off_classification
  doc: Turn off the peak profile classification.
  type: boolean
  inputBinding:
    prefix: --turn_off_classification
outputs: []
cwlVersion: v1.1
baseCommand:
- StoatyDive.py
