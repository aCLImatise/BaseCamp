#!/usr/bin/env cwl-runner

baseCommand:
- bgen2vcf
class: CommandLineTool
cwlVersion: v1.0
id: bgen2vcf
inputs:
- doc: ': Input BGEN File'
  id: in_bg_en
  inputBinding:
    prefix: --inBgen
  type: boolean
- doc: ': Input SAMPLE file for the BGEN File'
  id: in_bg_en_sample
  inputBinding:
    prefix: --inBgenSample
  type: boolean
- doc: ': Output prefix'
  id: out
  inputBinding:
    prefix: --out
  type: boolean
- doc: ': give IDs of people that will be included in study'
  id: people_include_id
  inputBinding:
    prefix: --peopleIncludeID
  type: boolean
- doc: ': from given file, set IDs of people that will be included in study'
  id: people_include_file
  inputBinding:
    prefix: --peopleIncludeFile
  type: boolean
- doc: ': give IDs of people that will be included in study'
  id: people_exclude_id
  inputBinding:
    prefix: --peopleExcludeID
  type: boolean
- doc: ': from given file, set IDs of people that will be included in study'
  id: people_exclude_file
  inputBinding:
    prefix: --peopleExcludeFile
  type: boolean
- doc: ': Specify some ranges to use, please use chr:begin-end format.'
  id: range_list
  inputBinding:
    prefix: --rangeList
  type: boolean
- doc: ': Specify the file containing ranges, please use chr:begin-end format.'
  id: range_file
  inputBinding:
    prefix: --rangeFile
  type: boolean
- doc: ': Specify the file containing site to extract, please use chr:pos format.'
  id: site_file
  inputBinding:
    prefix: --siteFile
  type: boolean
- doc: ': Do not output Variant ID (only output rsid)'
  id: hide_varid
  inputBinding:
    prefix: --hideVarId
  type: boolean
- doc: ': Do not call genotypes by skipping the GT tag'
  id: hide_gt
  inputBinding:
    prefix: --hideGT
  type: boolean
- doc: ': Calculate bi-allelic dosage using the DS tag'
  id: show_ds
  inputBinding:
    prefix: --showDS
  type: boolean
