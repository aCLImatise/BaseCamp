#!/usr/bin/env cwl-runner

baseCommand:
- RohHunter
class: CommandLineTool
cwlVersion: v1.0
id: rohhunter
inputs:
- doc: Input variant list in VCF or GSvar format.
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: Output TSV file with ROH regions.
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "List of BED files used for annotation. Each file adds a column to the output\
    \ file. The base filename is used as colum name and 4th column of the BED file\
    \ is used as annotation value. Default value: ''"
  id: annotate
  inputBinding:
    prefix: -annotate
  type: File
- doc: "Minimum variant depth ('DP'). Variants with lower depth are excluded from\
    \ the analysis. Default value: '20'"
  id: var_min_dp
  inputBinding:
    prefix: -var_min_dp
  type: long
- doc: "Minimum variant quality. Variants with lower quality are excluded from the\
    \ analysis. Default value: '30'"
  id: var_min_q
  inputBinding:
    prefix: -var_min_q
  type: double
- doc: "Comma-separated allele frequency info field names in 'in'. Default value:\
    \ ''"
  id: var_af_keys
  inputBinding:
    prefix: -var_af_keys
  type: string
- doc: "Comma-separated VEP CSQ field names of allele frequency annotations in 'in'.\
    \ Default value: ''"
  id: var_af_keys_vep
  inputBinding:
    prefix: -var_af_keys_vep
  type: string
- doc: "Minimum Q score of output ROH regions. Default value: '30'"
  id: roh_min_q
  inputBinding:
    prefix: -roh_min_q
  type: double
- doc: "Minimum marker count of output ROH regions. Default value: '20'"
  id: roh_min_markers
  inputBinding:
    prefix: -roh_min_markers
  type: long
- doc: "Minimum size in Kb of output ROH regions. Default value: '20'"
  id: roh_min_size
  inputBinding:
    prefix: -roh_min_size
  type: double
- doc: "Percentage of ROH markers that can be spanned when merging ROH regions . Default\
    \ value: '1'"
  id: ext_marker_perc
  inputBinding:
    prefix: -ext_marker_perc
  type: double
- doc: "Percentage of ROH size that can be spanned when merging ROH regions. Default\
    \ value: '50'"
  id: ext_size_perc
  inputBinding:
    prefix: -ext_size_perc
  type: double
- doc: "Include chrX into the analysis. Excluded by default. Default value: 'false'"
  id: inc_chrx
  inputBinding:
    prefix: -inc_chrx
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
