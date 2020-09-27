class: CommandLineTool
id: pbsim.cwl
inputs:
- id: in_prefix
  doc: prefix of output files (sd).
  type: boolean
  inputBinding:
    prefix: --prefix
- id: in_data_type
  doc: data type. CLR or CCS (CLR).
  type: boolean
  inputBinding:
    prefix: --data-type
- id: in_depth
  doc: 'depth of coverage (CLR: 20.0, CCS: 50.0).'
  type: boolean
  inputBinding:
    prefix: --depth
- id: in_length_min
  doc: minimum length (100).
  type: boolean
  inputBinding:
    prefix: --length-min
- id: in_length_max
  doc: 'maximum length (CLR: 25000, CCS: 2500).'
  type: boolean
  inputBinding:
    prefix: --length-max
- id: in_accuracy_min
  doc: "minimum accuracy.\n(CLR: 0.75, CCS: fixed as 0.75).\nthis option can be used\
    \ only in case of CLR."
  type: boolean
  inputBinding:
    prefix: --accuracy-min
- id: in_accuracy_max
  doc: "maximum accuracy.\n(CLR: 1.00, CCS: fixed as 1.00).\nthis option can be used\
    \ only in case of CLR."
  type: boolean
  inputBinding:
    prefix: --accuracy-max
- id: in_difference_ratio
  doc: "ratio of differences. substitution:insertion:deletion.\neach value up to 1000\
    \ (CLR: 10:60:30, CCS:6:21:73)."
  type: boolean
  inputBinding:
    prefix: --difference-ratio
- id: in_seed
  doc: for a pseudorandom number generator (Unix time).
  type: boolean
  inputBinding:
    prefix: --seed
- id: in_sample_fast_q
  doc: FASTQ format file to sample.
  type: boolean
  inputBinding:
    prefix: --sample-fastq
- id: in_sample_profile_id
  doc: "sample-fastq (filtered) profile ID.\nwhen using --sample-fastq, profile is\
    \ stored.\n'sample_profile_<ID>.fastq', and\n'sample_profile_<ID>.stats' are created.\n\
    when not using --sample-fastq, profile is re-used.\nNote that when profile is\
    \ used, --length-min,max,\n--accuracy-min,max would be the same as the profile."
  type: boolean
  inputBinding:
    prefix: --sample-profile-id
- id: in_model_qc
  doc: model of quality code.
  type: boolean
  inputBinding:
    prefix: --model_qc
- id: in_length_mean
  doc: 'mean of length model (CLR: 3000.0, CCS:450.0).'
  type: boolean
  inputBinding:
    prefix: --length-mean
- id: in_length_sd
  doc: "standard deviation of length model.\n(CLR: 2300.0, CCS: 170.0)."
  type: boolean
  inputBinding:
    prefix: --length-sd
- id: in_accuracy_mean
  doc: "mean of accuracy model.\n(CLR: 0.78, CCS: fixed as 0.98).\nthis option can\
    \ be used only in case of CLR."
  type: boolean
  inputBinding:
    prefix: --accuracy-mean
- id: in_accuracy_sd
  doc: "standard deviation of accuracy model.\n(CLR: 0.02, CCS: fixed as 0.02).\n\
    this option can be used only in case of CLR.\n"
  type: boolean
  inputBinding:
    prefix: --accuracy-sd
- id: in_reference
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pbsim
