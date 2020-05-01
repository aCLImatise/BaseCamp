#!/usr/bin/env cwl-runner

baseCommand:
- fill-ref-md5
class: CommandLineTool
cwlVersion: v1.0
id: fill-ref-md5
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: in_vcf_gz
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: out_vcf_gz
  inputBinding:
    position: 2
  type: string
- doc: Where to read/write computed MD5s. Opened in append mode, existing records
    are not touched.
  id: dictionary
  inputBinding:
    prefix: --dictionary
  type: File
- doc: <AS:xx,SP:xx,TX:xx>      Optional info on reference assembly (AS), species
    (SP), taxonomy (TX)
  id: info
  inputBinding:
    prefix: --info
  type: boolean
- doc: The reference sequence in fasta format indexed by samtools faidx
  id: refseq
  inputBinding:
    prefix: --refseq
  type: File
