#!/usr/bin/env cwl-runner

baseCommand:
- vcfallelicprimitives
class: CommandLineTool
cwlVersion: v1.0
id: vcfallelicprimitives
inputs:
- doc: ''
  id: file
  inputBinding:
    position: 0
  type: File
- doc: 'Retain MNPs as separate events (default: false).'
  id: use_mnps
  inputBinding:
    prefix: --use-mnps
  type: boolean
- doc: Tag records which are split apart of a complex allele with this flag.
  id: tag_parsed
  inputBinding:
    prefix: --tag-parsed
  type: string
- doc: 'Do not manipulate records in which either the ALT or REF is longer than LEN
    (default: 200).'
  id: max_length
  inputBinding:
    prefix: --max-length
  type: string
- doc: Maintain site and allele-level annotations when decomposing. Note that in many
    cases, such as multisample VCFs, these won't be valid post-decomposition.  For
    biallelic loci in single-sample VCFs, they should be usable with caution.
  id: keep_info
  inputBinding:
    prefix: --keep-info
  type: boolean
- doc: Maintain genotype-level annotations when decomposing.  Similar caution should
    be used for this as for --keep-info.
  id: keep_geno
  inputBinding:
    prefix: --keep-geno
  type: boolean
