class: CommandLineTool
id: SnpSift_gtfilter.cwl
inputs:
- id: in__exprfile_file
  doc: '| --exprFile <file>    : Read expression from a file'
  type: boolean
  inputBinding:
    prefix: -e
- id: in__file_inputvcf
  doc: '| --file <input.vcf>   : VCF input file. Default: STDIN'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_gn
  doc: "| --field <name>       : Field name to replace if filter is true. Default:\
    \ 'GT'"
  type: boolean
  inputBinding:
    prefix: -gn
- id: in_gv
  doc: "| --value <value>      : Field value to replace if filter is true. Default:\
    \ '.'"
  type: boolean
  inputBinding:
    prefix: -gv
- id: in__inverse_inverse
  doc: '| --inverse            : Inverse. Show lines that do not match filter expression'
  type: boolean
  inputBinding:
    prefix: -n
- id: in__set_create
  doc: "| --set <file>         : Create a SET using 'file'"
  type: boolean
  inputBinding:
    prefix: -s
- id: in_err_missing
  doc: ': Error is a field is missing. Default: false'
  type: boolean
  inputBinding:
    prefix: --errMissing
- id: in_format
  doc: ': SnpEff format version: {2, 3}. Default: Auto'
  type: long
  inputBinding:
    prefix: --format
- id: in_jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
- id: in_java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_filter
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- SnpSift
- gtfilter
