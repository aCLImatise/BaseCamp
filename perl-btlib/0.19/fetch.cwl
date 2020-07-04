class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fetch.cwl
inputs:
- id: config
  doc: Use <file> as configuration file
  type: File
  inputBinding:
    prefix: --config
- id: width_fasta_output
  doc: Width of FASTA output [80]
  type: long
  inputBinding:
    prefix: -w
- id: produce_fasta_output
  doc: Produce FASTA output
  type: boolean
  inputBinding:
    prefix: -f
- id: generate_crc_checksums
  doc: Generate CRC64 checksums
  type: boolean
  inputBinding:
    prefix: -s
- id: reverse_complement_sequence
  doc: Reverse complement sequence (implies -f)
  type: boolean
  inputBinding:
    prefix: -r
- id: keep_query_name
  doc: Keep query name as FASTA header (implies -f)
  type: boolean
  inputBinding:
    prefix: -k
- id: print_entries_found
  doc: Print all entries when multiple are found
  type: boolean
  inputBinding:
    prefix: -m
- id: append_sequence_length
  doc: Append sequence length (; LEN=n) to the FASTA header
  type: boolean
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- fetch
