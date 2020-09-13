class: CommandLineTool
id: ../../../hypo.cwl
inputs:
- id: in_reads_short
  doc: ''
  type: string
  inputBinding:
    prefix: --reads-short
- id: in_draft
  doc: ''
  type: string
  inputBinding:
    prefix: --draft
- id: in_bam_sr
  doc: ''
  type: string
  inputBinding:
    prefix: --bam-sr
- id: in_coverage_short
  doc: ''
  type: long
  inputBinding:
    prefix: --coverage-short
- id: in_size_ref
  doc: ''
  type: long
  inputBinding:
    prefix: --size-ref
- id: in_bam_lr
  doc: ''
  type: string
  inputBinding:
    prefix: --bam-lr
- id: in_output
  doc: ''
  type: string
  inputBinding:
    prefix: --output
- id: in_threads
  doc: ''
  type: long
  inputBinding:
    prefix: --threads
- id: in_processing_size
  doc: ''
  type: long
  inputBinding:
    prefix: --processing-size
- id: in_kind_sr
  doc: ''
  type: string
  inputBinding:
    prefix: --kind-sr
- id: in_match_sr
  doc: ''
  type: long
  inputBinding:
    prefix: --match-sr
- id: in_mismatch_sr
  doc: ''
  type: long
  inputBinding:
    prefix: --mismatch-sr
- id: in_gap_sr
  doc: ''
  type: long
  inputBinding:
    prefix: --gap-sr
- id: in_match_lr
  doc: ''
  type: long
  inputBinding:
    prefix: --match-lr
- id: in_mismatch_lr
  doc: ''
  type: long
  inputBinding:
    prefix: --mismatch-lr
- id: in_gap_lr
  doc: ''
  type: long
  inputBinding:
    prefix: --gap-lr
- id: in_ned_th
  doc: ''
  type: long
  inputBinding:
    prefix: --ned-th
- id: in_qual_map_th
  doc: ''
  type: long
  inputBinding:
    prefix: --qual-map-th
- id: in_intermed
  doc: ''
  type: boolean
  inputBinding:
    prefix: --intermed
- id: in_sr
  doc: '(Corresponding to NGS reads like Illumina reads) '
  type: string
  inputBinding:
    position: 0
- id: in_ccs
  doc: '(Corresponding to HiFi reads like PacBio CCS reads) '
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hypo
