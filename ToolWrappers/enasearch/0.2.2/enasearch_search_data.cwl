class: CommandLineTool
id: enasearch_search_data.cwl
inputs:
- id: in_free_text_search
  doc: "Use free text search, otherwise the data warehouse\nis used"
  type: boolean?
  inputBinding:
    prefix: --free_text_search
- id: in_query
  doc: "Query string, made up of filtering conditions,\njoined by logical ANDs, ORs\
    \ and NOTs and bound by\ndouble quotes; the filter fields for a query are\naccessible\
    \ with get_filter_fields and the type of\nfilters with get_filter_types  [required]"
  type: string?
  inputBinding:
    prefix: --query
- id: in_result
  doc: "Id of a result (accessible with get_results)\n[required]"
  type: string?
  inputBinding:
    prefix: --result
- id: in_display
  doc: "Display option to specify the display format\n(accessible with get_display_options)\
    \  [required]"
  type: string?
  inputBinding:
    prefix: --display
- id: in_download
  doc: "Download option to specify that records are to be\nsaved in a file (used with\
    \ file option, list\naccessible with get_download_options)"
  type: File?
  inputBinding:
    prefix: --download
- id: in_file
  doc: "File to save the content of the search (used with\ndownload option)"
  type: File?
  inputBinding:
    prefix: --file
- id: in_fields
  doc: "Fields to return (accessible with\nget_returnable_fields, used only for report\
    \ as\ndisplay value) [multiple or comma-separated]"
  type: string?
  inputBinding:
    prefix: --fields
- id: in_sort_fields
  doc: "Fields to sort the results (accessible with\nget_sortable_fields, used only\
    \ for report as display\nvalue) [multiple or comma-separated]"
  type: string?
  inputBinding:
    prefix: --sortfields
- id: in_offset
  doc: "RANGE  First record to get (used only for display different\nof fasta and\
    \ fastq"
  type: long?
  inputBinding:
    prefix: --offset
- id: in_length
  doc: "RANGE  Number of records to retrieve (used only for display\ndifferent of\
    \ fasta and fastq"
  type: long?
  inputBinding:
    prefix: --length
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- enasearch
- search_data
