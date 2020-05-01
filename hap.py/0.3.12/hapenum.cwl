#!/usr/bin/env cwl-runner

baseCommand:
- hapenum
class: CommandLineTool
cwlVersion: v1.0
id: hapenum
inputs:
- doc: The input VCF/BCF file (use file:sample to specify a sample)
  id: input_file
  inputBinding:
    prefix: --input-file
  type: string
- doc: Write a dot file with the reference graph.
  id: output_dot
  inputBinding:
    prefix: --output-dot
  type: string
- doc: Write a fasta file with all possible haplotypes.
  id: output_fast_a
  inputBinding:
    prefix: --output-fasta
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
- doc: '[ --apply-filters ] arg Apply filtering in VCF.'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: '[ --preprocess ] arg    Preprocess variants'
  id: p
  inputBinding:
    prefix: -P
  type: boolean
- doc: Maximum number of haplotypes to enumerate.
  id: max_n_haplotypes
  inputBinding:
    prefix: --max-n-haplotypes
  type: string
