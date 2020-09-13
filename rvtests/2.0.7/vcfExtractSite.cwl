class: CommandLineTool
id: ../../../vcfExtractSite.cwl
inputs:
- id: in_site
  doc: '[], --inverse, --rangeList [], --rangeFile []'
  type: boolean
  inputBinding:
    prefix: --site
- id: in_snp_only
  doc: ''
  type: boolean
  inputBinding:
    prefix: --snpOnly
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vcfExtractSite
