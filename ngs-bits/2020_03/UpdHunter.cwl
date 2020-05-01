#!/usr/bin/env cwl-runner

baseCommand:
- UpdHunter
class: CommandLineTool
cwlVersion: v1.0
id: updhunter
inputs:
- doc: Input VCF file of trio.
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: Header name of child.
  id: c
  inputBinding:
    prefix: -c
  type: string
- doc: Header name of father.
  id: f
  inputBinding:
    prefix: -f
  type: string
- doc: Header name of mother.
  id: m
  inputBinding:
    prefix: -m
  type: string
- doc: Output TSV file containing the detected UPDs.
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "BED file with regions to exclude, e.g. copy-number variant regions. Default\
    \ value: ''"
  id: exclude
  inputBinding:
    prefix: -exclude
  type: File
- doc: "Minimum depth (DP) of a variant (in all three samples). Default value: '20'"
  id: var_min_dp
  inputBinding:
    prefix: -var_min_dp
  type: long
- doc: "Minimum quality (QUAL) of a variant. Default value: '30'"
  id: var_min_q
  inputBinding:
    prefix: -var_min_q
  type: double
- doc: "Also use InDels. The default is to use SNVs only. Default value: 'false'"
  id: var_use_indels
  inputBinding:
    prefix: -var_use_indels
  type: boolean
- doc: "Percentage of markers that can be spanned when merging adjacent regions .\
    \ Default value: '1'"
  id: ext_marker_perc
  inputBinding:
    prefix: -ext_marker_perc
  type: double
- doc: "Percentage of base size that can be spanned when merging adjacent regions.\
    \ Default value: '20'"
  id: ext_size_perc
  inputBinding:
    prefix: -ext_size_perc
  type: double
- doc: "Mimimum size in kilo-bases required for a UPD region. Default value: '1000'"
  id: reg_min_kb
  inputBinding:
    prefix: -reg_min_kb
  type: double
- doc: "Mimimum number of UPD markers required in a region. Default value: '15'"
  id: reg_min_markers
  inputBinding:
    prefix: -reg_min_markers
  type: long
- doc: "Mimimum Q-score required for a UPD region. Default value: '20'"
  id: reg_min_q
  inputBinding:
    prefix: -reg_min_q
  type: double
- doc: "Enable verbose debug output. Default value: 'false'"
  id: debug
  inputBinding:
    prefix: -debug
  type: boolean
- doc: Prints changeloge and exits.
  id: changelog
  inputBinding:
    prefix: --changelog
  type: boolean
- doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  id: tdx
  inputBinding:
    prefix: --tdx
  type: boolean
