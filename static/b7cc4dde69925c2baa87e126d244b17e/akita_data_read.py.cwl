class: CommandLineTool
id: akita_data_read.py.cwl
inputs:
- id: in_set_blacklist_nucleotides
  doc: Set blacklist nucleotides to a baseline value.
  type: string?
  inputBinding:
    prefix: -b
- id: in_clip
  doc: 'Clip values post-summary to a maximum [Default: none]'
  type: string?
  inputBinding:
    prefix: --clip
- id: in_crop
  doc: 'Crop bp off each end [Default: 0]'
  type: long?
  inputBinding:
    prefix: --crop
- id: in_positions_diagonal_ignore
  doc: 'Positions on the diagonal to ignore [Default: 2]'
  type: long?
  inputBinding:
    prefix: -d
- id: in_gaussian_kernel_stddev
  doc: 'Gaussian kernel stddev to smooth values [Default: 0]'
  type: long?
  inputBinding:
    prefix: -k
- id: in_average_pooling_width
  doc: 'Average pooling width [Default: 1]'
  type: long?
  inputBinding:
    prefix: -w
- id: in_as_obs_exp
  doc: save targets as obsexp profiles
  type: boolean?
  inputBinding:
    prefix: --as_obsexp
- id: in_global_obs_exp
  doc: use global obs/exp
  type: boolean?
  inputBinding:
    prefix: --global_obsexp
- id: in_no_log
  doc: no not take log for obs/exp
  type: boolean?
  inputBinding:
    prefix: --no_log
- id: in_genome_hic_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_seqs_bed_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_seqs_hic_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/basenji:0.5--py_0
cwlVersion: v1.1
baseCommand:
- akita_data_read.py
