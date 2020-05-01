#!/usr/bin/env cwl-runner

baseCommand:
- dipenum
class: CommandLineTool
cwlVersion: v1.0
id: dipenum
inputs:
- doc: The input VCF/BCF file (use file:sample to specify a sample)
  id: input_file
  inputBinding:
    prefix: --input-file
  type: string
- doc: Write a file with all possible haplotypes.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: '[ --location ] arg      The location / subset.'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: '[ --reference ] arg     The reference fasta file.'
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: Maximum number of haplotypes to enumerate.
  id: max_n_haplotypes
  inputBinding:
    prefix: --max-n-haplotypes
  type: string
- doc: '[ --apply-filters ] arg Apply filters in VCF (default to 1)'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: '[ --preprocess ] arg    Preprocess variants'
  id: p
  inputBinding:
    prefix: -P
  type: boolean
