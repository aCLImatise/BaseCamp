class: CommandLineTool
id: SnpSift_gtfilter.cwl
inputs:
- id: e
  doc: '| --exprFile <file>    : Read expression from a file'
  type: boolean
  inputBinding:
    prefix: -e
- id: f
  doc: '| --file <input.vcf>   : VCF input file. Default: STDIN'
  type: boolean
  inputBinding:
    prefix: -f
- id: gn
  doc: "| --field <name>       : Field name to replace if filter is true. Default:\
    \ 'GT'"
  type: boolean
  inputBinding:
    prefix: -gn
- id: gv
  doc: "| --value <value>      : Field value to replace if filter is true. Default:\
    \ '.'"
  type: boolean
  inputBinding:
    prefix: -gv
- id: n
  doc: '| --inverse            : Inverse. Show lines that do not match filter expression'
  type: boolean
  inputBinding:
    prefix: -n
- id: s
  doc: "| --set <file>         : Create a SET using 'file'"
  type: boolean
  inputBinding:
    prefix: -s
- id: err_missing
  doc: ': Error is a field is missing. Default: false'
  type: boolean
  inputBinding:
    prefix: --errMissing
- id: format
  doc: ': SnpEff format version: {2, 3}. Default: Auto'
  type: string
  inputBinding:
    prefix: --format
outputs: []
cwlVersion: v1.1
baseCommand:
- SnpSift
- gtfilter
