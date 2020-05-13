class: CommandLineTool
id: twins.cwl
inputs:
- id: ref
  doc: samtools reference sequence (required)
  type: string
  inputBinding:
    prefix: --ref
- id: region
  doc: samtools reference region (optional)
  type: string
  inputBinding:
    prefix: --region
- id: exclude
  doc: name of chromosome to skip over (argument may be  specified multiple times).
    Exclusions will be ignored if a region argument is provided
  type: string
  inputBinding:
    prefix: --exclude
- id: twin1
  doc: twin/replicate 1 gvcf file
  type: string
  inputBinding:
    prefix: --twin1
- id: twin2
  doc: twin/replicate 2 gvcf file
  type: string
  inputBinding:
    prefix: --twin2
- id: conflict_file
  doc: Write all conflict positions to the specified file
  type: string
  inputBinding:
    prefix: --conflict-file
- id: no_variable_metadata
  doc: Remove timestamp and any other metadata from output  during validation testing
  type: boolean
  inputBinding:
    prefix: --no-variable-metadata
- id: murdock
  doc: If true, don't stop because of any out-of-order  position conflicts. Any out
    of order positions are  ignored. In case of an overlap the first observation  is
    used and subsequent repeats are ignored.
  type: boolean
  inputBinding:
    prefix: --murdock
- id: min_gq_x
  doc: "If GQX value for a record is below this value, then  don't use the locus.\
    \ Note that if the filter field  already contains a GQX filter, this will not\
    \ 'rescue'  filtered variants when min-gqx is set very low -- this filter can\
    \ only lower callability on a file. Any  records missing the GQX field will not\
    \ be filtered  out. (default: 0)"
  type: string
  inputBinding:
    prefix: --min-gqx
- id: min_pos_rank_sum
  doc: 'Filter site if the INFO field contains the key  BaseQRankSum and the value
    is less than the minimum.  (default: no-filter)'
  type: string
  inputBinding:
    prefix: --min-pos-rank-sum
- id: min_qd
  doc: 'Filter site if the INFO field contains the key QD and  the value is less than
    the minimum. (default:  no-filter)'
  type: string
  inputBinding:
    prefix: --min-qd
- id: min_info_field
  doc: 'Filter records which contain an INFO key equal to  argument1, and a corresponding
    value less than  argument2 '
  type: string
  inputBinding:
    prefix: --min-info-field
- id: max_info_field
  doc: 'Filter records which contain an INFO key equal to  argument1, and a corresponding
    value greater than  argument2 '
  type: string
  inputBinding:
    prefix: --max-info-field
outputs: []
cwlVersion: v1.1
baseCommand:
- twins
