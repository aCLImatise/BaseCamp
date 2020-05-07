class: CommandLineTool
id: pbsim.cwl
inputs:
- id: prefix
  doc: prefix of output files (sd).
  type: boolean
  inputBinding:
    prefix: --prefix
- id: data_type
  doc: data type. CLR or CCS (CLR).
  type: boolean
  inputBinding:
    prefix: --data-type
- id: depth
  doc: 'depth of coverage (CLR: 20.0, CCS: 50.0).'
  type: boolean
  inputBinding:
    prefix: --depth
- id: length_min
  doc: minimum length (100).
  type: boolean
  inputBinding:
    prefix: --length-min
- id: length_max
  doc: 'maximum length (CLR: 25000, CCS: 2500).'
  type: boolean
  inputBinding:
    prefix: --length-max
- id: accuracy_min
  doc: 'minimum accuracy. (CLR: 0.75, CCS: fixed as 0.75). this option can be used
    only in case of CLR.'
  type: boolean
  inputBinding:
    prefix: --accuracy-min
- id: accuracy_max
  doc: 'maximum accuracy. (CLR: 1.00, CCS: fixed as 1.00). this option can be used
    only in case of CLR.'
  type: boolean
  inputBinding:
    prefix: --accuracy-max
- id: difference_ratio
  doc: 'ratio of differences. substitution:insertion:deletion. each value up to 1000
    (CLR: 10:60:30, CCS:6:21:73).'
  type: boolean
  inputBinding:
    prefix: --difference-ratio
- id: seed
  doc: for a pseudorandom number generator (Unix time).
  type: boolean
  inputBinding:
    prefix: --seed
- id: sample_fast_q
  doc: FASTQ format file to sample.
  type: boolean
  inputBinding:
    prefix: --sample-fastq
- id: sample_profile_id
  doc: sample-fastq (filtered) profile ID. when using --sample-fastq, profile is stored.
    'sample_profile_<ID>.fastq', and 'sample_profile_<ID>.stats' are created. when
    not using --sample-fastq, profile is re-used. Note that when profile is used,
    --length-min,max, --accuracy-min,max would be the same as the profile.
  type: boolean
  inputBinding:
    prefix: --sample-profile-id
- id: model_qc
  doc: model of quality code.
  type: boolean
  inputBinding:
    prefix: --model_qc
- id: length_mean
  doc: 'mean of length model (CLR: 3000.0, CCS:450.0).'
  type: boolean
  inputBinding:
    prefix: --length-mean
- id: length_sd
  doc: 'standard deviation of length model. (CLR: 2300.0, CCS: 170.0).'
  type: boolean
  inputBinding:
    prefix: --length-sd
- id: accuracy_mean
  doc: 'mean of accuracy model. (CLR: 0.78, CCS: fixed as 0.98). this option can be
    used only in case of CLR.'
  type: boolean
  inputBinding:
    prefix: --accuracy-mean
- id: accuracy_sd
  doc: 'standard deviation of accuracy model. (CLR: 0.02, CCS: fixed as 0.02). this
    option can be used only in case of CLR.'
  type: boolean
  inputBinding:
    prefix: --accuracy-sd
outputs: []
cwlVersion: v1.1
baseCommand:
- pbsim
