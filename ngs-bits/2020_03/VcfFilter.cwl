#!/usr/bin/env cwl-runner

baseCommand:
- VcfFilter
class: CommandLineTool
cwlVersion: v1.0
id: vcffilter
inputs:
- doc: "Input VCF file. If unset, reads from STDIN. Default value: ''"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Output VCF list. If unset, writes to STDOUT. Default value: ''"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Region of interest in BED format, or comma-separated list of region, e.g.\
    \ 'chr1:454540-454678,chr2:473457-4734990'. Default value: ''"
  id: reg
  inputBinding:
    prefix: -reg
  type: string
- doc: "Filters by variant type. Possible types are: 'snp','indel','multi-allelic','other'.\
    \ Default value: ''"
  id: variant_type
  inputBinding:
    prefix: -variant_type
  type: string
- doc: "Filter by ID column (regular expression). Default value: ''"
  id: id
  inputBinding:
    prefix: -id
  type: string
- doc: "Filter by QUAL column (minimum). Default value: '0'"
  id: qual
  inputBinding:
    prefix: -qual
  type: double
- doc: "Filter by FILTER column (regular expression). Default value: ''"
  id: filter
  inputBinding:
    prefix: -filter
  type: string
- doc: "Removes entries with non-empty FILTER column. Default value: 'false'"
  id: filter_empty
  inputBinding:
    prefix: -filter_empty
  type: boolean
- doc: Filter by INFO column entries - use ';' as separator for several filters, e.g.
    'DP > 5;AO > 2' (spaces are important).
  id: info
  inputBinding:
    prefix: -info
  type: string
- doc: Filter by sample-specific entries - use ';' as separator for several filters,
    e.g. 'GT is 1/1' (spaces are important).
  id: sample
  inputBinding:
    prefix: -sample
  type: string
- doc: "If set, a line will pass if one sample passes all filters (default behaviour\
    \ is that all samples have to pass all filters). Default value: 'false'"
  id: sample_one_match
  inputBinding:
    prefix: -sample_one_match
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
