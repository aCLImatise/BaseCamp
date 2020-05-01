#!/usr/bin/env cwl-runner

baseCommand:
- fetch
class: CommandLineTool
cwlVersion: v1.0
id: fetch
inputs:
- doc: Use <file> as configuration file
  id: config
  inputBinding:
    prefix: --config
  type: File
- doc: Width of FASTA output [80]
  id: w
  inputBinding:
    prefix: -w
  type: long
- doc: Produce FASTA output
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: Generate CRC64 checksums
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: Reverse complement sequence (implies -f)
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: Keep query name as FASTA header (implies -f)
  id: k
  inputBinding:
    prefix: -k
  type: boolean
- doc: Print all entries when multiple are found
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: Append sequence length (; LEN=n) to the FASTA header
  id: l
  inputBinding:
    prefix: -l
  type: boolean
