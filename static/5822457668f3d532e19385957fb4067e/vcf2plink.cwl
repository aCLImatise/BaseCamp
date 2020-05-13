class: CommandLineTool
id: vcf2plink.cwl
inputs:
- id: people_include_id
  doc: '[], --peopleIncludeFile []'
  type: boolean
  inputBinding:
    prefix: --peopleIncludeID
- id: people_exclude_id
  doc: '[], --peopleExcludeFile []'
  type: boolean
  inputBinding:
    prefix: --peopleExcludeID
- id: plink_chrom
  doc: '[], --maxMAF []'
  type: boolean
  inputBinding:
    prefix: --plinkChrom
- id: minh_we
  doc: '[], --minCallRate []'
  type: boolean
  inputBinding:
    prefix: --minHWE
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf2plink
