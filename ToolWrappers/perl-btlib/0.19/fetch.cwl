class: CommandLineTool
id: fetch.cwl
inputs:
- id: in_config
  doc: Use <file> as configuration file
  type: File?
  inputBinding:
    prefix: --config
- id: in_width_fasta_output
  doc: Width of FASTA output [80]
  type: long?
  inputBinding:
    prefix: -w
- id: in_produce_fasta_output
  doc: Produce FASTA output
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_generate_crc_checksums
  doc: Generate CRC64 checksums
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_reverse_complement_sequence
  doc: Reverse complement sequence (implies -f)
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_keep_query_name
  doc: Keep query name as FASTA header (implies -f)
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_print_entries_when
  doc: Print all entries when multiple are found
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_append_sequence_length
  doc: Append sequence length (; LEN=n) to the FASTA header
  type: boolean?
  inputBinding:
    prefix: -l
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fetch
