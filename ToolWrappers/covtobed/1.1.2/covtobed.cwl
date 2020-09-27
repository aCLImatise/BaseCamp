class: CommandLineTool
id: covtobed.cwl
inputs:
- id: in_physical_coverage
  doc: compute physical coverage (needs paired alignments in input)
  type: boolean
  inputBinding:
    prefix: --physical-coverage
- id: in_min_mapq
  doc: "skip alignments whose mapping quality is less than MINQ\n(default: 0)"
  type: long
  inputBinding:
    prefix: --min-mapq
- id: in_min_cov
  doc: "print BED feature only if the coverage is bigger than\n(or equal to) MINCOV\
    \ (default: 0)"
  type: long
  inputBinding:
    prefix: --min-cov
- id: in_max_cov
  doc: "print BED feature only if the coverage is lower than\nMAXCOV (default: 100000)"
  type: long
  inputBinding:
    prefix: --max-cov
- id: in_min_len
  doc: "print BED feature only if its length is bigger (or equal\nto) than MINLELN\
    \ (default: 1)"
  type: long
  inputBinding:
    prefix: --min-len
- id: in_discard_invalid_alignments
  doc: "skip duplicates, failed QC, and non primary alignment,\nminq>0 (or user-defined\
    \ if higher) (default: 0)"
  type: boolean
  inputBinding:
    prefix: --discard-invalid-alignments
- id: in_output_strands
  doc: output coverage and stats separately for each strand
  type: boolean
  inputBinding:
    prefix: --output-strands
- id: in_format
  doc: output format
  type: string
  inputBinding:
    prefix: --format
- id: in_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- covtobed
