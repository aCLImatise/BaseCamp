#!/usr/bin/env cwl-runner

baseCommand:
- fill-fs
class: CommandLineTool
cwlVersion: v1.0
id: fill-fs
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: file_vcf
  inputBinding:
    position: 1
  type: File
- doc: Regions to mask (tabix indexed), multiple files can be given
  id: bed_mask
  inputBinding:
    prefix: --bed-mask
  type: File
- doc: Do self-masking of clustered variants within this range.
  id: cluster
  inputBinding:
    prefix: --cluster
  type: long
- doc: Flanking sequence length [100]
  id: length
  inputBinding:
    prefix: --length
  type: long
- doc: <char|lc>       The character to use or "lc" for lowercase. This option must
    preceed -b, -v or -c in order to take effect. With multiple files works as a switch
    on the command line, see the example below [N]
  id: mask_char
  inputBinding:
    prefix: --mask-char
  type: boolean
- doc: The reference sequence.
  id: refseq
  inputBinding:
    prefix: --refseq
  type: File
- doc: Mask known variants in the flanking sequence, multiple files can be given (tabix
    indexed)
  id: vcf_mask
  inputBinding:
    prefix: --vcf-mask
  type: File
