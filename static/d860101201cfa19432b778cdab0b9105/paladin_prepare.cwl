class: CommandLineTool
id: paladin_prepare.cwl
inputs:
- id: r
  doc: '<#>         Reference Database: 1: UniProtKB Reviewed (Swiss-Prot) 2: UniProtKB
    Clustered 90% (UniRef90)'
  type: boolean
  inputBinding:
    prefix: -r
- id: f
  doc: Skip download, use local copy of reference database (may be indexed)
  type: string
  inputBinding:
    prefix: -f
- id: p
  doc: HTTP or SOCKS proxy address
  type: string
  inputBinding:
    prefix: -P
outputs: []
cwlVersion: v1.1
baseCommand:
- paladin
- prepare
