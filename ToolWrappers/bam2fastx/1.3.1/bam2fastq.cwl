class: CommandLineTool
id: bam2fastq.cwl
inputs:
- id: in_output
  doc: STR  Prefix of output filenames
  type: boolean?
  inputBinding:
    prefix: --output
- id: in_int_gzip_compression
  doc: INT  Gzip compression level [1-9] [1]
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_compress_we_add
  doc: Do not compress. In this case, we will not add .gz, and we ignore any -c setting.
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_split_barcodes
  doc: Split output into multiple FASTQ files, by barcode pairs.
  type: boolean?
  inputBinding:
    prefix: --split-barcodes
- id: in_seq_id_prefix
  doc: STR  Prefix for sequence IDs in headers
  type: boolean?
  inputBinding:
    prefix: --seqid-prefix
- id: in_input
  doc: STR  Input file(s).
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bam2fastx:1.3.1--he1c1bb9_0
cwlVersion: v1.1
baseCommand:
- bam2fastq
