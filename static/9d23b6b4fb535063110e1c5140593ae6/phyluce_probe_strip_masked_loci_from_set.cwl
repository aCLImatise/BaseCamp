class: CommandLineTool
id: phyluce_probe_strip_masked_loci_from_set.cwl
inputs:
- id: bed
  doc: The input BED file
  type: string
  inputBinding:
    prefix: --bed
- id: two_bit
  doc: The input genome to slice in UCSC 2bit format
  type: string
  inputBinding:
    prefix: --twobit
- id: output
  doc: The output BED file
  type: string
  inputBinding:
    prefix: --output
- id: filter_mask
  doc: Filter strings with > X frequency of masked bases
  type: string
  inputBinding:
    prefix: --filter-mask
- id: max_n
  doc: The maximum number of ambiguous bases ('N') to accept
  type: long
  inputBinding:
    prefix: --max-n
- id: min_length
  doc: The minimum length loci to keep
  type: long
  inputBinding:
    prefix: --min-length
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_probe_strip_masked_loci_from_set
