#!/usr/bin/env cwl-runner

baseCommand:
- bedToBam
class: CommandLineTool
cwlVersion: v1.0
id: bedtobam
inputs:
- doc: 'Set the mappinq quality for the BAM records. (INT) Default: 255'
  id: mapq
  inputBinding:
    prefix: -mapq
  type: boolean
- doc: The BED file is in BED12 format.  The BAM CIGAR string will reflect BED "blocks".
  id: bed12
  inputBinding:
    prefix: -bed12
  type: boolean
- doc: Write uncompressed BAM output. Default writes compressed BAM.
  id: ub_am
  inputBinding:
    prefix: -ubam
  type: boolean
