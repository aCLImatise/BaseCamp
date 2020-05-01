#!/usr/bin/env cwl-runner

baseCommand:
- vcf2ld_gene
class: CommandLineTool
cwlVersion: v1.0
id: vcf2ld_gene
inputs:
- doc: ': input VCF File'
  id: in_vcf
  inputBinding:
    prefix: --inVcf
  type: boolean
- doc: ': output prefix'
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
- doc: ': Specify the file containing sites to include, please use "chr pos" format.'
  id: site_file
  inputBinding:
    prefix: --siteFile
  type: boolean
- doc: ': specify a gene file (for burden tests)'
  id: gene_file
  inputBinding:
    prefix: --geneFile
  type: boolean
- doc: ': specify which genes to test'
  id: gene
  inputBinding:
    prefix: --gene
  type: boolean
