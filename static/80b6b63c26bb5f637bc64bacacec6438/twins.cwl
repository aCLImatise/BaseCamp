class: CommandLineTool
id: twins.cwl
inputs:
- id: in_ref
  doc: samtools reference sequence (required)
  type: string?
  inputBinding:
    prefix: --ref
- id: in_region
  doc: samtools reference region (optional)
  type: string?
  inputBinding:
    prefix: --region
- id: in_exclude
  doc: "name of chromosome to skip over (argument may be\nspecified multiple times).\
    \ Exclusions will be ignored\nif a region argument is provided"
  type: string?
  inputBinding:
    prefix: --exclude
- id: in_twin_one
  doc: twin/replicate 1 gvcf file
  type: long?
  inputBinding:
    prefix: --twin1
- id: in_twin_two
  doc: twin/replicate 2 gvcf file
  type: long?
  inputBinding:
    prefix: --twin2
- id: in_conflict_file
  doc: Write all conflict positions to the specified file
  type: File?
  inputBinding:
    prefix: --conflict-file
- id: in_no_variable_metadata
  doc: "Remove timestamp and any other metadata from output\nduring validation testing"
  type: boolean?
  inputBinding:
    prefix: --no-variable-metadata
- id: in_murdock
  doc: "If true, don't stop because of any out-of-order\nposition conflicts. Any out\
    \ of order positions are\nignored. In case of an overlap the first observation\n\
    is used and subsequent repeats are ignored."
  type: boolean?
  inputBinding:
    prefix: --murdock
- id: in_min_gq_x
  doc: "If GQX value for a record is below this value, then\ndon't use the locus.\
    \ Note that if the filter field\nalready contains a GQX filter, this will not\
    \ 'rescue'\nfiltered variants when min-gqx is set very low -- this\nfilter can\
    \ only lower callability on a file. Any\nrecords missing the GQX field will not\
    \ be filtered\nout. (default: 0)"
  type: long?
  inputBinding:
    prefix: --min-gqx
- id: in_min_pos_rank_sum
  doc: "Filter site if the INFO field contains the key\nBaseQRankSum and the value\
    \ is less than the minimum.\n(default: no-filter)"
  type: long?
  inputBinding:
    prefix: --min-pos-rank-sum
- id: in_min_qd
  doc: "Filter site if the INFO field contains the key QD and\nthe value is less than\
    \ the minimum. (default:\nno-filter)"
  type: long?
  inputBinding:
    prefix: --min-qd
- id: in_min_info_field
  doc: "Filter records which contain an INFO key equal to\nargument1, and a corresponding\
    \ value less than\nargument2"
  type: long?
  inputBinding:
    prefix: --min-info-field
- id: in_max_info_field
  doc: "Filter records which contain an INFO key equal to\nargument1, and a corresponding\
    \ value greater than\nargument2"
  type: long?
  inputBinding:
    prefix: --max-info-field
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- twins
