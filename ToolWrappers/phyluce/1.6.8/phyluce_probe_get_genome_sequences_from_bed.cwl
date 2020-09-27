class: CommandLineTool
id: phyluce_probe_get_genome_sequences_from_bed.cwl
inputs:
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
- id: in_output
  doc: The output fasta file
  type: File
  inputBinding:
    prefix: --output
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
- id: in_buffer_to
  doc: "The length to which to buffer the extracted sequences\n"
  type: long
  inputBinding:
    prefix: --buffer-to
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: The output fasta file
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- phyluce_probe_get_genome_sequences_from_bed
