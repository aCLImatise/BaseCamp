class: CommandLineTool
id: bam2fasta.cwl
inputs:
- id: in_output
  doc: Prefix of output filenames
  type: boolean?
  inputBinding:
    prefix: --output
- id: in_gzip_compression_level
  doc: Gzip compression level [1-9] [1]
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_compress_we_add
  doc: Do not compress. In this case, we will not add .gz, and we ignore any -c setting.
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_split_barcodes
  doc: Split output into multiple FASTA files, by barcode pairs.
  type: boolean?
  inputBinding:
    prefix: --split-barcodes
- id: in_seq_id_prefix
  doc: Prefix for sequence IDs in headers
  type: boolean?
  inputBinding:
    prefix: --seqid-prefix
- id: in_input
  doc: Input file.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bam2fasta
