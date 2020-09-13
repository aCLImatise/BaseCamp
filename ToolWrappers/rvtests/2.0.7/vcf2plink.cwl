class: CommandLineTool
id: ../../../vcf2plink.cwl
inputs:
- id: in_people_include_id
  doc: '[], --peopleIncludeFile []'
  type: boolean
  inputBinding:
    prefix: --peopleIncludeID
- id: in_people_exclude_id
  doc: '[], --peopleExcludeFile []'
  type: boolean
  inputBinding:
    prefix: --peopleExcludeID
- id: in_plink_chrom
  doc: '[], --maxMAF []'
  type: boolean
  inputBinding:
    prefix: --plinkChrom
- id: in_minh_we
  doc: '[], --minCallRate []'
  type: boolean
  inputBinding:
    prefix: --minHWE
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vcf2plink
