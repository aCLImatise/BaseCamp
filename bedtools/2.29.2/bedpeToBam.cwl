#!/usr/bin/env cwl-runner

baseCommand:
- bedpeToBam
class: CommandLineTool
cwlVersion: v1.0
id: bedpetobam
inputs:
- doc: 'Set the mappinq quality for the BAM records. (INT) Default: 255'
  id: mapq
  inputBinding:
    prefix: -mapq
  type: boolean
- doc: Write uncompressed BAM output. Default writes compressed BAM.
  id: ub_am
  inputBinding:
    prefix: -ubam
  type: boolean
