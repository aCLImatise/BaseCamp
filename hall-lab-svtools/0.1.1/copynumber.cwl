#!/usr/bin/env cwl-runner

baseCommand:
- copynumber
class: CommandLineTool
cwlVersion: v1.0
id: copynumber
inputs:
- doc: VCF input
  id: input_vcf
  inputBinding:
    prefix: --input_vcf
  type: string
- doc: BED input
  id: coordinates
  inputBinding:
    prefix: --coordinates
  type: string
- doc: CNVnator .root histogram file (required)
  id: root
  inputBinding:
    prefix: --root
  type: string
- doc: CNVnator window size (required)
  id: window
  inputBinding:
    prefix: --window
  type: string
- doc: sample to annotate
  id: sample
  inputBinding:
    prefix: --sample
  type: string
- doc: path to cnvnator-multi binary
  id: cnv_nator
  inputBinding:
    prefix: --cnvnator
  type: string
- doc: 'compressed(.gz) output VCF to write (default: stdout)'
  id: output_vcf
  inputBinding:
    prefix: --output_vcf
  type: string
- doc: debugging verbosity
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
