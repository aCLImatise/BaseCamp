#!/usr/bin/env cwl-runner

baseCommand:
- vcfentropy
class: CommandLineTool
cwlVersion: v1.0
id: vcfentropy
inputs:
- doc: ''
  id: vcf_file
  inputBinding:
    position: 0
  type: string
- doc: FASTA reference file to use to obtain flanking sequences
  id: fast_a_reference
  inputBinding:
    prefix: --fasta-reference
  type: boolean
- doc: Size of the window over which to calculate entropy
  id: window_size
  inputBinding:
    prefix: --window-size
  type: boolean
