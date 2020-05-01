#!/usr/bin/env cwl-runner

baseCommand:
- vcfprimers
class: CommandLineTool
cwlVersion: v1.0
id: vcfprimers
inputs:
- doc: ''
  id: vcf_file
  inputBinding:
    position: 0
  type: string
- doc: FASTA reference file to use to obtain primer sequences
  id: fast_a_reference
  inputBinding:
    prefix: --fasta-reference
  type: boolean
- doc: The length of the primer sequences on each side of the variant
  id: primer_length
  inputBinding:
    prefix: --primer-length
  type: boolean
