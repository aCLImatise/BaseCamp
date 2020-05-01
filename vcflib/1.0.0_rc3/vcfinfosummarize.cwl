#!/usr/bin/env cwl-runner

baseCommand:
- vcfinfosummarize
class: CommandLineTool
cwlVersion: v1.0
id: vcfinfosummarize
inputs:
- doc: ''
  id: vcf_file
  inputBinding:
    position: 0
  type: string
- doc: Summarize this field in the INFO column
  id: field
  inputBinding:
    prefix: --field
  type: boolean
- doc: Store the computed statistic in this info field
  id: info
  inputBinding:
    prefix: --info
  type: boolean
- doc: Take the mean for field (default)
  id: average
  inputBinding:
    prefix: --average
  type: boolean
- doc: Use the median
  id: median
  inputBinding:
    prefix: --median
  type: boolean
- doc: Use the min
  id: min
  inputBinding:
    prefix: --min
  type: boolean
- doc: Use the max
  id: max
  inputBinding:
    prefix: --max
  type: boolean
