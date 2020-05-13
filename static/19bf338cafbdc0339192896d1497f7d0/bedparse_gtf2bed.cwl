class: CommandLineTool
id: bedparse_gtf2bed.cwl
inputs:
- id: gtf
  doc: Path to the GTF file.
  type: string
  inputBinding:
    position: 0
- id: extrafields
  doc: Comma separated list of extra GTF fields to be added after col 12 (e.g. gene_id,gene_name).
  type: string
  inputBinding:
    prefix: --extraFields
- id: filter_key
  doc: GTF extra field on which to apply the filtering
  type: string
  inputBinding:
    prefix: --filterKey
- id: filter_type
  doc: Comma separated list of filterKey field values to retain.
  type: string
  inputBinding:
    prefix: --filterType
- id: transcript_feature_name
  doc: Transcript feature name. Features with this string in field 3 of the GTF file
    will be considered transcripts. (default 'transcript')
  type: string
  inputBinding:
    prefix: --transcript_feature_name
outputs: []
cwlVersion: v1.1
baseCommand:
- bedparse
- gtf2bed
