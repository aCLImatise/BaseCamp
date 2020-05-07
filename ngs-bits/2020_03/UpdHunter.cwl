class: CommandLineTool
id: UpdHunter.cwl
inputs:
- id: in
  doc: Input VCF file of trio.
  type: File
  inputBinding:
    prefix: -in
- id: c
  doc: Header name of child.
  type: string
  inputBinding:
    prefix: -c
- id: f
  doc: Header name of father.
  type: string
  inputBinding:
    prefix: -f
- id: m
  doc: Header name of mother.
  type: string
  inputBinding:
    prefix: -m
- id: out
  doc: Output TSV file containing the detected UPDs.
  type: File
  inputBinding:
    prefix: -out
- id: exclude
  doc: "BED file with regions to exclude, e.g. copy-number variant regions. Default\
    \ value: ''"
  type: File
  inputBinding:
    prefix: -exclude
- id: var_min_dp
  doc: "Minimum depth (DP) of a variant (in all three samples). Default value: '20'"
  type: long
  inputBinding:
    prefix: -var_min_dp
- id: var_min_q
  doc: "Minimum quality (QUAL) of a variant. Default value: '30'"
  type: double
  inputBinding:
    prefix: -var_min_q
- id: var_use_indels
  doc: "Also use InDels. The default is to use SNVs only. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -var_use_indels
- id: ext_marker_perc
  doc: "Percentage of markers that can be spanned when merging adjacent regions .\
    \ Default value: '1'"
  type: double
  inputBinding:
    prefix: -ext_marker_perc
- id: ext_size_perc
  doc: "Percentage of base size that can be spanned when merging adjacent regions.\
    \ Default value: '20'"
  type: double
  inputBinding:
    prefix: -ext_size_perc
- id: reg_min_kb
  doc: "Mimimum size in kilo-bases required for a UPD region. Default value: '1000'"
  type: double
  inputBinding:
    prefix: -reg_min_kb
- id: reg_min_markers
  doc: "Mimimum number of UPD markers required in a region. Default value: '15'"
  type: long
  inputBinding:
    prefix: -reg_min_markers
- id: reg_min_q
  doc: "Mimimum Q-score required for a UPD region. Default value: '20'"
  type: double
  inputBinding:
    prefix: -reg_min_q
- id: debug
  doc: "Enable verbose debug output. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -debug
- id: changelog
  doc: Prints changeloge and exits.
  type: boolean
  inputBinding:
    prefix: --changelog
- id: tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean
  inputBinding:
    prefix: --tdx
outputs: []
cwlVersion: v1.1
baseCommand:
- UpdHunter
