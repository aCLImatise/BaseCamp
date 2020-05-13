class: CommandLineTool
id: phyluce_probe_get_genome_sequences_from_bed.cwl
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
  doc: The output fasta file
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
- id: buffer_to
  doc: The length to which to buffer the extracted sequences
  type: string
  inputBinding:
    prefix: --buffer-to
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_probe_get_genome_sequences_from_bed
