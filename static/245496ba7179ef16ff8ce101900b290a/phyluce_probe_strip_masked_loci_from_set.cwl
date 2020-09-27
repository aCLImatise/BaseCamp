class: CommandLineTool
id: phyluce_probe_strip_masked_loci_from_set.cwl
inputs:
- id: in_output
  doc: "[--filter-mask MASK]\n[--max-n MAX_N]\n[--min-length MIN_LENGTH]"
  type: long
  inputBinding:
    prefix: --output
- id: in_bed
  doc: The input BED file
  type: File
  inputBinding:
    prefix: --bed
- id: in_two_bit
  doc: The input genome to slice in UCSC 2bit format
  type: long
  inputBinding:
    prefix: --twobit
- id: in_filter_mask
  doc: Filter strings with > X frequency of masked bases
  type: string
  inputBinding:
    prefix: --filter-mask
- id: in_max_n
  doc: The maximum number of ambiguous bases ('N') to accept
  type: long
  inputBinding:
    prefix: --max-n
- id: in_min_length
  doc: "The minimum length loci to keep\n"
  type: long
  inputBinding:
    prefix: --min-length
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phyluce_probe_strip_masked_loci_from_set
