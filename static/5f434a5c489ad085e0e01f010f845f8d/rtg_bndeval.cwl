class: CommandLineTool
id: rtg_bndeval.cwl
inputs:
- id: baseline
  doc: VCF file containing baseline variants
  type: File
  inputBinding:
    prefix: --baseline
- id: bed_regions
  doc: if set, only read VCF records that overlap the ranges contained in the specified
    BED file
  type: File
  inputBinding:
    prefix: --bed-regions
- id: calls
  doc: VCF file containing called variants
  type: File
  inputBinding:
    prefix: --calls
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
- id: all_records
  doc: use all records regardless of FILTER status (Default is to only process records
    where FILTER is "." or "PASS")
  type: boolean
  inputBinding:
    prefix: --all-records
- id: bidirectional
  doc: if set, allow matches between flipped breakends
  type: boolean
  inputBinding:
    prefix: --bidirectional
- id: tolerance
  doc: positional tolerance for breakend matching (Default is 100)
  type: long
  inputBinding:
    prefix: --tolerance
- id: no_roc
  doc: do not produce ROCs
  type: boolean
  inputBinding:
    prefix: --no-roc
- id: output_mode
  doc: output reporting mode. Allowed values are [split, annotate] (Default is split)
  type: string
  inputBinding:
    prefix: --output-mode
- id: sort_order
  doc: the order in which to sort the ROC scores so that "good" scores come before
    "bad" scores. Allowed values are [ascending, descending] (Default is descending)
  type: string
  inputBinding:
    prefix: --sort-order
- id: vcf_score_field
  doc: the name of the VCF FORMAT field to use as the ROC score. Also valid are "QUAL",
    "INFO.<name>" or "FORMAT.<name>" to select the named VCF FORMAT or INFO field
    (Default is INFO.DP)
  type: string
  inputBinding:
    prefix: --vcf-score-field
- id: no_gzip
  doc: do not gzip the output
  type: boolean
  inputBinding:
    prefix: --no-gzip
outputs: []
cwlVersion: v1.1
baseCommand:
- rtg
- bndeval
