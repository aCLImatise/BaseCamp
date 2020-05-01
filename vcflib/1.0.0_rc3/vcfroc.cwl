#!/usr/bin/env cwl-runner

baseCommand:
- vcfroc
class: CommandLineTool
cwlVersion: v1.0
id: vcfroc
inputs:
- doc: ''
  id: vcf_file
  inputBinding:
    position: 0
  type: string
- doc: use this VCF as ground truth for ROC generation
  id: truth_vcf
  inputBinding:
    prefix: --truth-vcf
  type: File
- doc: compare records up to this many bp away (default 30)
  id: window_size
  inputBinding:
    prefix: --window-size
  type: string
- doc: directly compare complex alleles, don't parse into primitives
  id: complex
  inputBinding:
    prefix: --complex
  type: boolean
- doc: FASTA reference file
  id: reference
  inputBinding:
    prefix: --reference
  type: File
