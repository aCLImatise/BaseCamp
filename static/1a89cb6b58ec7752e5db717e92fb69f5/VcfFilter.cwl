class: CommandLineTool
id: VcfFilter.cwl
inputs:
- id: in
  doc: "Input VCF file. If unset, reads from STDIN. Default value: ''"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "Output VCF list. If unset, writes to STDOUT. Default value: ''"
  type: File
  inputBinding:
    prefix: -out
- id: reg
  doc: "Region of interest in BED format, or comma-separated list of region, e.g.\
    \ 'chr1:454540-454678,chr2:473457-4734990'. Default value: ''"
  type: string
  inputBinding:
    prefix: -reg
- id: variant_type
  doc: "Filters by variant type. Possible types are: 'snp','indel','multi-allelic','other'.\
    \ Default value: ''"
  type: string
  inputBinding:
    prefix: -variant_type
- id: id
  doc: "Filter by ID column (regular expression). Default value: ''"
  type: string
  inputBinding:
    prefix: -id
- id: qual
  doc: "Filter by QUAL column (minimum). Default value: '0'"
  type: double
  inputBinding:
    prefix: -qual
- id: filter
  doc: "Filter by FILTER column (regular expression). Default value: ''"
  type: string
  inputBinding:
    prefix: -filter
- id: filter_empty
  doc: "Removes entries with non-empty FILTER column. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -filter_empty
- id: info
  doc: Filter by INFO column entries - use ';' as separator for several filters, e.g.
    'DP > 5;AO > 2' (spaces are important).
  type: string
  inputBinding:
    prefix: -info
- id: sample
  doc: Filter by sample-specific entries - use ';' as separator for several filters,
    e.g. 'GT is 1/1' (spaces are important).
  type: string
  inputBinding:
    prefix: -sample
- id: sample_one_match
  doc: "If set, a line will pass if one sample passes all filters (default behaviour\
    \ is that all samples have to pass all filters). Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -sample_one_match
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
- VcfFilter
