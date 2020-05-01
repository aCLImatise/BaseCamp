#!/usr/bin/env cwl-runner

baseCommand:
- bam2fasta
class: CommandLineTool
cwlVersion: v1.0
id: bam2fasta
inputs:
- doc: Input file.
  id: input
  inputBinding:
    position: 0
  type: string
- doc: Prefix of output filenames
  id: output
  inputBinding:
    prefix: --output
  type: boolean
- doc: Gzip compression level [1-9] [1]
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: Do not compress. In this case, we will not add .gz, and we ignore any -c setting.
  id: u
  inputBinding:
    prefix: -u
  type: boolean
- doc: Split output into multiple FASTA files, by barcode pairs.
  id: split_barcodes
  inputBinding:
    prefix: --split-barcodes
  type: boolean
- doc: Prefix for sequence IDs in headers
  id: seq_id_prefix
  inputBinding:
    prefix: --seqid-prefix
  type: boolean
