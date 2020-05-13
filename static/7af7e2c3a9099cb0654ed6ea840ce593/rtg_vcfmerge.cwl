class: CommandLineTool
id: rtg_vcfmerge.cwl
inputs:
- id: add_header
  doc: '|FILE file containing VCF header lines to add, or a literal header line. May
    be specified 0 or more times'
  type: string
  inputBinding:
    prefix: --add-header
- id: force_merge
  doc: allow merging of specified header ID even when descriptions do not match. May
    be specified 0 or more times, or as a comma separated list
  type: string
  inputBinding:
    prefix: --force-merge
- id: force_merge_all
  doc: attempt merging of all non-matching header declarations
  type: boolean
  inputBinding:
    prefix: --force-merge-all
- id: no_gzip
  doc: do not gzip the output
  type: boolean
  inputBinding:
    prefix: --no-gzip
- id: no_header
  doc: prevent VCF header from being written
  type: boolean
  inputBinding:
    prefix: --no-header
- id: no_merge_alts
  doc: do not merge multiple records if the ALTs are different
  type: boolean
  inputBinding:
    prefix: --no-merge-alts
- id: no_merge_records
  doc: do not merge multiple records at the same position into one
  type: boolean
  inputBinding:
    prefix: --no-merge-records
- id: preserve_formats
  doc: do not merge multiple records containing unmergeable FORMAT fields (Default
    is to remove those FORMAT fields so the variants can be combined)
  type: boolean
  inputBinding:
    prefix: --preserve-formats
- id: stats
  doc: output statistics for the merged VCF file
  type: boolean
  inputBinding:
    prefix: --stats
outputs: []
cwlVersion: v1.1
baseCommand:
- rtg
- vcfmerge
