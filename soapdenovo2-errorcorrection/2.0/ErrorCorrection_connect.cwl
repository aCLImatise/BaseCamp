class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ErrorCorrection_connect.cwl
inputs:
- id: str_query_file
  doc: <str>   Query a file, *.fq, *.fa
  type: boolean
  inputBinding:
    prefix: -a
- id: str_query_b
  doc: <str>   Query b file, the same as a
  type: boolean
  inputBinding:
    prefix: -b
- id: str_output_connected
  doc: <str>   Output connected file in *.fa
  type: boolean
  inputBinding:
    prefix: -o
- id: two
  doc: <str>   Output fail connected read1.fq
  type: boolean
  inputBinding:
    prefix: '-2'
- id: three
  doc: <str>   Output fail connected read2.fq
  type: boolean
  inputBinding:
    prefix: '-3'
- id: int_trim_head
  doc: <int>   Trim x bp at head before use [0]
  type: boolean
  inputBinding:
    prefix: -r
- id: int_trim_tail
  doc: <int>   Trim x bp at tail before use [0]
  type: boolean
  inputBinding:
    prefix: -R
- id: int_minimal_align
  doc: <int>   Minimal align length allowed [8]
  type: boolean
  inputBinding:
    prefix: -l
- id: int_mean_align
  doc: '<int>   Mean align length induced alignment (Default: No) [0]'
  type: boolean
  inputBinding:
    prefix: -m
- id: int_maximal_align
  doc: <int>   Maximal align length allowed [70]
  type: boolean
  inputBinding:
    prefix: -u
- id: float_identity_cutoff
  doc: <float> Identity cutoff of aligned region [0.9]
  type: boolean
  inputBinding:
    prefix: -c
- id: float_maximum_simularity
  doc: <float> Maximum simularity between best and second best result. [0.7]
  type: boolean
  inputBinding:
    prefix: -d
- id: float_b_threshold
  doc: <float> b threshold (Maximum %/100 of qual '0' base per alignment) [0.9]
  type: boolean
  inputBinding:
    prefix: -B
- id: int_pairs_connect
  doc: '<int>   Pairs to connect (Default: All) [0]'
  type: boolean
  inputBinding:
    prefix: -t
- id: int_maximum_allowance
  doc: "<int>   Maximum 'N' allowance for filtering (Default: Do not filter) [-1]"
  type: boolean
  inputBinding:
    prefix: -N
- id: output_connecting_quality
  doc: Output connecting quality [0]
  type: boolean
  inputBinding:
    prefix: -q
- id: int_ascii_default
  doc: '<int>   Quality ASCII base (Default: 33)'
  type: boolean
  inputBinding:
    prefix: -x
- id: int_quality_start
  doc: '<int>   Quality start range offset (Default: 2)'
  type: boolean
  inputBinding:
    prefix: -X
outputs: []
cwlVersion: v1.1
baseCommand:
- ErrorCorrection
- connect
