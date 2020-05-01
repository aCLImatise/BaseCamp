#!/usr/bin/env cwl-runner

baseCommand:
- vcfgeno2haplo
class: CommandLineTool
cwlVersion: v1.0
id: vcfgeno2haplo
inputs:
- doc: ''
  id: vcf_file
  inputBinding:
    position: 0
  type: string
- doc: FASTA reference file, required with -i and -u
  id: reference
  inputBinding:
    prefix: --reference
  type: File
- doc: Merge variants at most this many bp apart (default 30)
  id: window_size
  inputBinding:
    prefix: --window-size
  type: string
- doc: Don't output the entire haplotype, just concatenate REF/ALT strings (delimited
    by ":")
  id: only_variants
  inputBinding:
    prefix: --only-variants
  type: boolean
