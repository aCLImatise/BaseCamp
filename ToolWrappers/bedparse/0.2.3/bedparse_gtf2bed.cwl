class: CommandLineTool
id: ../../../bedparse_gtf2bed.cwl
inputs:
- id: in_extrafields
  doc: "Comma separated list of extra GTF fields to be added\nafter col 12 (e.g. gene_id,gene_name)."
  type: long
  inputBinding:
    prefix: --extraFields
- id: in_filter_key
  doc: GTF extra field on which to apply the filtering
  type: string
  inputBinding:
    prefix: --filterKey
- id: in_filter_type
  doc: "Comma separated list of filterKey field values to\nretain."
  type: string
  inputBinding:
    prefix: --filterType
- id: in_transcript_feature_name
  doc: "Transcript feature name. Features with this string in\nfield 3 of the GTF\
    \ file will be considered\ntranscripts. (default 'transcript')\n"
  type: File
  inputBinding:
    prefix: --transcript_feature_name
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bedparse
- gtf2bed
