class: CommandLineTool
id: bam2fastq.cwl
inputs:
- id: input
  doc: Input file.
  type: string
  inputBinding:
    position: 0
- id: output
  doc: Prefix of output filenames
  type: boolean
  inputBinding:
    prefix: --output
- id: c
  doc: Gzip compression level [1-9] [1]
  type: boolean
  inputBinding:
    prefix: -c
- id: u
  doc: Do not compress. In this case, we will not add .gz, and we ignore any -c setting.
  type: boolean
  inputBinding:
    prefix: -u
- id: split_barcodes
  doc: Split output into multiple FASTQ files, by barcode pairs.
  type: boolean
  inputBinding:
    prefix: --split-barcodes
- id: seq_id_prefix
  doc: Prefix for sequence IDs in headers
  type: boolean
  inputBinding:
    prefix: --seqid-prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- bam2fastq
