class: CommandLineTool
id: vcf_sort.cwl
inputs:
- id: chromosomal_order
  doc: Use natural ordering (1,2,10,MT,X) rather then the default (1,10,2,MT,X). This
    requires new version of the unix "sort" command which supports the --version-sort
    option.
  type: boolean
  inputBinding:
    prefix: --chromosomal-order
- id: parallel
  doc: Change the number of sorts run concurrently to <int>
  type: long
  inputBinding:
    prefix: --parallel
- id: temporary_directory
  doc: Use a directory other than /tmp as the temporary directory for sorting.
  type: boolean
  inputBinding:
    prefix: --temporary-directory
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf-sort
