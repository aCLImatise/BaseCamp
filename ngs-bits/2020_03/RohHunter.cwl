class: CommandLineTool
id: RohHunter.cwl
inputs:
- id: in
  doc: Input variant list in VCF or GSvar format.
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: Output TSV file with ROH regions.
  type: File
  inputBinding:
    prefix: -out
- id: annotate
  doc: "List of BED files used for annotation. Each file adds a column to the output\
    \ file. The base filename is used as colum name and 4th column of the BED file\
    \ is used as annotation value. Default value: ''"
  type: File
  inputBinding:
    prefix: -annotate
- id: var_min_dp
  doc: "Minimum variant depth ('DP'). Variants with lower depth are excluded from\
    \ the analysis. Default value: '20'"
  type: long
  inputBinding:
    prefix: -var_min_dp
- id: var_min_q
  doc: "Minimum variant quality. Variants with lower quality are excluded from the\
    \ analysis. Default value: '30'"
  type: double
  inputBinding:
    prefix: -var_min_q
- id: var_af_keys
  doc: "Comma-separated allele frequency info field names in 'in'. Default value:\
    \ ''"
  type: string
  inputBinding:
    prefix: -var_af_keys
- id: var_af_keys_vep
  doc: "Comma-separated VEP CSQ field names of allele frequency annotations in 'in'.\
    \ Default value: ''"
  type: string
  inputBinding:
    prefix: -var_af_keys_vep
- id: roh_min_q
  doc: "Minimum Q score of output ROH regions. Default value: '30'"
  type: double
  inputBinding:
    prefix: -roh_min_q
- id: roh_min_markers
  doc: "Minimum marker count of output ROH regions. Default value: '20'"
  type: long
  inputBinding:
    prefix: -roh_min_markers
- id: roh_min_size
  doc: "Minimum size in Kb of output ROH regions. Default value: '20'"
  type: double
  inputBinding:
    prefix: -roh_min_size
- id: ext_marker_perc
  doc: "Percentage of ROH markers that can be spanned when merging ROH regions . Default\
    \ value: '1'"
  type: double
  inputBinding:
    prefix: -ext_marker_perc
- id: ext_size_perc
  doc: "Percentage of ROH size that can be spanned when merging ROH regions. Default\
    \ value: '50'"
  type: double
  inputBinding:
    prefix: -ext_size_perc
- id: inc_chrx
  doc: "Include chrX into the analysis. Excluded by default. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -inc_chrx
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
- RohHunter
