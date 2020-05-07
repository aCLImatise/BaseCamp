class: CommandLineTool
id: covtobed.cwl
inputs:
- id: physical_coverage
  doc: compute physical coverage (needs paired alignments in input)
  type: boolean
  inputBinding:
    prefix: --physical-coverage
- id: min_mapq
  doc: 'skip alignments whose mapping quality is less than MINQ (default: 0)'
  type: long
  inputBinding:
    prefix: --min-mapq
- id: min_cov
  doc: 'print BED feature only if the coverage is bigger than (or equal to) MINCOV
    (default: 0)'
  type: long
  inputBinding:
    prefix: --min-cov
- id: max_cov
  doc: 'print BED feature only if the coverage is lower than MAXCOV (default: 100000)'
  type: long
  inputBinding:
    prefix: --max-cov
- id: min_len
  doc: 'print BED feature only if its length is bigger (or equal to) than MINLELN
    (default: 1)'
  type: long
  inputBinding:
    prefix: --min-len
- id: discard_invalid_alignments
  doc: 'skip duplicates, failed QC, and non primary alignment, minq>0 (or user-defined
    if higher) (default: 0)'
  type: boolean
  inputBinding:
    prefix: --discard-invalid-alignments
- id: output_strands
  doc: output coverage and stats separately for each strand
  type: boolean
  inputBinding:
    prefix: --output-strands
- id: format
  doc: output format
  type: string
  inputBinding:
    prefix: --format
outputs: []
cwlVersion: v1.1
baseCommand:
- covtobed
