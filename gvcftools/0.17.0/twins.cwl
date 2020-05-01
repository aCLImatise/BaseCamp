#!/usr/bin/env cwl-runner

baseCommand:
- twins
class: CommandLineTool
cwlVersion: v1.0
id: twins
inputs:
- doc: samtools reference sequence (required)
  id: ref
  inputBinding:
    prefix: --ref
  type: string
- doc: samtools reference region (optional)
  id: region
  inputBinding:
    prefix: --region
  type: string
- doc: name of chromosome to skip over (argument may be  specified multiple times).
    Exclusions will be ignored if a region argument is provided
  id: exclude
  inputBinding:
    prefix: --exclude
  type: string
- doc: twin/replicate 1 gvcf file
  id: twin1
  inputBinding:
    prefix: --twin1
  type: string
- doc: twin/replicate 2 gvcf file
  id: twin2
  inputBinding:
    prefix: --twin2
  type: string
- doc: Write all conflict positions to the specified file
  id: conflict_file
  inputBinding:
    prefix: --conflict-file
  type: string
- doc: Remove timestamp and any other metadata from output  during validation testing
  id: no_variable_metadata
  inputBinding:
    prefix: --no-variable-metadata
  type: boolean
- doc: If true, don't stop because of any out-of-order  position conflicts. Any out
    of order positions are  ignored. In case of an overlap the first observation  is
    used and subsequent repeats are ignored.
  id: murdock
  inputBinding:
    prefix: --murdock
  type: boolean
- doc: "If GQX value for a record is below this value, then  don't use the locus.\
    \ Note that if the filter field  already contains a GQX filter, this will not\
    \ 'rescue'  filtered variants when min-gqx is set very low -- this filter can\
    \ only lower callability on a file. Any  records missing the GQX field will not\
    \ be filtered  out. (default: 0)"
  id: min_gq_x
  inputBinding:
    prefix: --min-gqx
  type: string
- doc: 'Filter site if the INFO field contains the key  BaseQRankSum and the value
    is less than the minimum.  (default: no-filter)'
  id: min_pos_rank_sum
  inputBinding:
    prefix: --min-pos-rank-sum
  type: string
- doc: 'Filter site if the INFO field contains the key QD and  the value is less than
    the minimum. (default:  no-filter)'
  id: min_qd
  inputBinding:
    prefix: --min-qd
  type: string
- doc: 'Filter records which contain an INFO key equal to  argument1, and a corresponding
    value less than  argument2 '
  id: min_info_field
  inputBinding:
    prefix: --min-info-field
  type: string
- doc: 'Filter records which contain an INFO key equal to  argument1, and a corresponding
    value greater than  argument2 '
  id: max_info_field
  inputBinding:
    prefix: --max-info-field
  type: string
