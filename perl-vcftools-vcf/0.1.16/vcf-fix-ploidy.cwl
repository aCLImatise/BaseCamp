#!/usr/bin/env cwl-runner

baseCommand:
- vcf-fix-ploidy
class: CommandLineTool
cwlVersion: v1.0
id: vcf-fix-ploidy
inputs:
- doc: M or F, required if the list is not complete in -s
  id: assumed_sex
  inputBinding:
    prefix: --assumed-sex
  type: string
- doc: Add or remove het likelihoods (not the default behaviour)
  id: fix_likelihoods
  inputBinding:
    prefix: --fix-likelihoods
  type: boolean
- doc: Ploidy definition. The default is shown below.
  id: ploidy
  inputBinding:
    prefix: --ploidy
  type: File
- doc: List of sample sexes (sample_name [MF]).
  id: samples
  inputBinding:
    prefix: --samples
  type: File
