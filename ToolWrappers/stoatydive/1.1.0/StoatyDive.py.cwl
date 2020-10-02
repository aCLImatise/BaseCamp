class: CommandLineTool
id: StoatyDive.py.cwl
inputs:
- id: in__inputbed_peak
  doc: "*.bed, --input_bed *.bed\nPath to the peak file in bed6 format."
  type: boolean
  inputBinding:
    prefix: -a
- id: in_bambed__inputbam
  doc: "*.bam/*.bed, --input_bam *.bam/*.bed\nPath to the read file used for the peak\
    \ calling in bed\nor bam format."
  type: boolean
  inputBinding:
    prefix: -b
- id: in__chromosome_length
  doc: "*.txt, --chr_file *.txt\nPath to the chromosome length file."
  type: boolean
  inputBinding:
    prefix: -c
- id: in_output_folder
  doc: 'Write results to this path. [Default: Operating Path]'
  type: File
  inputBinding:
    prefix: --output_folder
- id: in_thresh
  doc: "Set a normalized CV threshold to divide the peak\nprofiles into more specific\
    \ (0) and more unspecific\n(1). [Default: 1.0]"
  type: double
  inputBinding:
    prefix: --thresh
- id: in_peak_correction
  doc: "Activate peak correction. The peaks are recentered\n(shifted) for the correct\
    \ sumit."
  type: boolean
  inputBinding:
    prefix: --peak_correction
- id: in_max_translocate
  doc: "Set this flag if you want to shift the peak profiles\nbased on the maximum\
    \ value inside the profile instead\nof a Gaussian blur translocation."
  type: boolean
  inputBinding:
    prefix: --max_translocate
- id: in_peak_length
  doc: Set maximum peak length for the constant peak length.
  type: long
  inputBinding:
    prefix: --peak_length
- id: in_max_norm_value
  doc: "Provide a maximum value for CV to make the normalized\nCV plot more comparable."
  type: double
  inputBinding:
    prefix: --max_norm_value
- id: in_border_penalty
  doc: Adds a penalty for non-centered peaks.
  type: boolean
  inputBinding:
    prefix: --border_penalty
- id: in_scale_max
  doc: Provide a maximum value for the CV plot.
  type: double
  inputBinding:
    prefix: --scale_max
- id: in_max_cl
  doc: "Maximal number of clusters of the kmeans clustering of\nthe peak profiles.\
    \ The algorithm will be optimized,\ni.e., the parameter is just a constraint and\
    \ not\nabsolute. [Default: 15]"
  type: long
  inputBinding:
    prefix: --maxcl
- id: in_num_cl
  doc: You can forcefully set the number of cluster of peak
  type: long
  inputBinding:
    prefix: --numcl
- id: in_turn_off_classification
  doc: "Turn off the peak profile classification.\n"
  type: boolean
  inputBinding:
    prefix: --turn_off_classification
- id: in_profiles_dot
  doc: --sm                  Turn on the peak profile smoothing for the peak
  type: string
  inputBinding:
    position: 0
- id: in_on_dot
  doc: --lam float           Parameter for the peak profile classification. Set
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- StoatyDive.py
