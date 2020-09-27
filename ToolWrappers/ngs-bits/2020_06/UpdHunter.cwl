class: CommandLineTool
id: UpdHunter.cwl
inputs:
- id: in_in
  doc: Input VCF file of trio.
  type: File
  inputBinding:
    prefix: -in
- id: in_header_name_child
  doc: Header name of child.
  type: string
  inputBinding:
    prefix: -c
- id: in_header_name_father
  doc: Header name of father.
  type: string
  inputBinding:
    prefix: -f
- id: in_header_name_mother
  doc: Header name of mother.
  type: string
  inputBinding:
    prefix: -m
- id: in_out
  doc: Output TSV file containing the detected UPDs.
  type: File
  inputBinding:
    prefix: -out
- id: in_exclude
  doc: "BED file with regions to exclude, e.g. copy-number variant regions.\nDefault\
    \ value: ''"
  type: File
  inputBinding:
    prefix: -exclude
- id: in_var_min_dp
  doc: "Minimum depth (DP) of a variant (in all three samples).\nDefault value: '20'"
  type: long
  inputBinding:
    prefix: -var_min_dp
- id: in_var_min_q
  doc: "Minimum quality (QUAL) of a variant.\nDefault value: '30'"
  type: double
  inputBinding:
    prefix: -var_min_q
- id: in_var_use_indels
  doc: "Also use InDels. The default is to use SNVs only.\nDefault value: 'false'"
  type: boolean
  inputBinding:
    prefix: -var_use_indels
- id: in_ext_marker_perc
  doc: "Percentage of markers that can be spanned when merging adjacent regions .\n\
    Default value: '1'"
  type: double
  inputBinding:
    prefix: -ext_marker_perc
- id: in_ext_size_perc
  doc: "Percentage of base size that can be spanned when merging adjacent regions.\n\
    Default value: '20'"
  type: double
  inputBinding:
    prefix: -ext_size_perc
- id: in_reg_min_kb
  doc: "Mimimum size in kilo-bases required for a UPD region.\nDefault value: '1000'"
  type: double
  inputBinding:
    prefix: -reg_min_kb
- id: in_reg_min_markers
  doc: "Mimimum number of UPD markers required in a region.\nDefault value: '15'"
  type: long
  inputBinding:
    prefix: -reg_min_markers
- id: in_reg_min_q
  doc: "Mimimum Q-score required for a UPD region.\nDefault value: '20'"
  type: double
  inputBinding:
    prefix: -reg_min_q
- id: in_debug
  doc: "Enable verbose debug output.\nDefault value: 'false'"
  type: boolean
  inputBinding:
    prefix: -debug
- id: in_changelog
  doc: Prints changeloge and exits.
  type: boolean
  inputBinding:
    prefix: --changelog
- id: in_tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean
  inputBinding:
    prefix: --tdx
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output TSV file containing the detected UPDs.
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- UpdHunter
