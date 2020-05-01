#!/usr/bin/env cwl-runner

baseCommand:
- vcf2plink
class: CommandLineTool
cwlVersion: v1.0
id: vcf2plink
inputs:
- doc: '[], --peopleIncludeFile []'
  id: people_include_id
  inputBinding:
    prefix: --peopleIncludeID
  type: boolean
- doc: '[], --peopleExcludeFile []'
  id: people_exclude_id
  inputBinding:
    prefix: --peopleExcludeID
  type: boolean
- doc: '[], --maxMAF []'
  id: plink_chrom
  inputBinding:
    prefix: --plinkChrom
  type: boolean
- doc: '[], --minCallRate []'
  id: minh_we
  inputBinding:
    prefix: --minHWE
  type: boolean
