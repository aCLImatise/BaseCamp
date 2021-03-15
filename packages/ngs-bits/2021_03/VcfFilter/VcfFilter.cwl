class: CommandLineTool
id: VcfFilter.cwl
inputs:
- id: in_in
  doc: "Input VCF file. If unset, reads from STDIN.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "Output VCF list. If unset, writes to STDOUT.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -out
- id: in_reg
  doc: "Region of interest in BED format, or comma-separated list of region, e.g.\
    \ 'chr1:454540-454678,chr2:473457-4734990'.\nDefault value: ''"
  type: long?
  inputBinding:
    prefix: -reg
- id: in_variant_type
  doc: "Filters by variant type. Possible types are: 'snp','indel','multi-allelic','other'.\n\
    Default value: ''"
  type: string?
  inputBinding:
    prefix: -variant_type
- id: in_id
  doc: "Filter by ID column (regular expression).\nDefault value: ''"
  type: string?
  inputBinding:
    prefix: -id
- id: in_qual
  doc: "Filter by QUAL column (minimum).\nDefault value: '0'"
  type: double?
  inputBinding:
    prefix: -qual
- id: in_filter
  doc: "Filter by FILTER column (regular expression).\nDefault value: ''"
  type: string?
  inputBinding:
    prefix: -filter
- id: in_filter_empty
  doc: "Removes entries with non-empty FILTER column.\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -filter_empty
- id: in_info
  doc: Filter by INFO column entries - use ';' as separator for several filters, e.g.
    'DP > 5;AO > 2' (spaces are important).
  type: long?
  inputBinding:
    prefix: -info
- id: in_sample
  doc: Filter by sample-specific entries - use ';' as separator for several filters,
    e.g. 'GT is 1/1' (spaces are important).
  type: long?
  inputBinding:
    prefix: -sample
- id: in_sample_one_match
  doc: "If set, a line will pass if one sample passes all filters (default behaviour\
    \ is that all samples have to pass all filters).\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -sample_one_match
- id: in_changelog
  doc: Prints changeloge and exits.
  type: boolean?
  inputBinding:
    prefix: --changelog
- id: in_tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean?
  inputBinding:
    prefix: --tdx
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0
cwlVersion: v1.1
baseCommand:
- VcfFilter
