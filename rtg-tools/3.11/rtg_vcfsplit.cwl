class: CommandLineTool
id: rtg_vcfsplit.cwl
inputs:
- id: bed_regions
  doc: if set, only read VCF records that overlap the ranges contained in the specified
    BED file
  type: File
  inputBinding:
    prefix: --bed-regions
- id: input
  doc: the input VCF, or '-' to read from standard input
  type: File
  inputBinding:
    prefix: --input
- id: output
  doc: directory for output
  type: string
  inputBinding:
    prefix: --output
- id: region
  doc: if set, only read VCF records within the specified range. The format is one
    of <sequence_name>, <sequence_name>:<start>-<end>, <sequence_name>:<pos>+<length>
    or <sequence_name>:<pos>~<padding>
  type: string
  inputBinding:
    prefix: --region
- id: keep_ref
  doc: keep records where the sample is reference
  type: boolean
  inputBinding:
    prefix: --keep-ref
- id: keep_sample
  doc: '|FILE   file containing sample IDs to select, or a literal sample name. May
    be specified 0 or more times, or as a comma separated list'
  type: string
  inputBinding:
    prefix: --keep-sample
- id: remove_sample
  doc: '|FILE file containing sample IDs to ignore, or a literal sample name. May
    be specified 0 or more times, or as a comma separated list'
  type: string
  inputBinding:
    prefix: --remove-sample
- id: no_gzip
  doc: do not gzip the output
  type: boolean
  inputBinding:
    prefix: --no-gzip
outputs: []
cwlVersion: v1.1
baseCommand:
- rtg
- vcfsplit
