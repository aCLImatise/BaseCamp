class: CommandLineTool
id: enasearch_search_data.cwl
inputs:
- id: free_text_search
  doc: Use free text search, otherwise the data warehouse is used
  type: boolean
  inputBinding:
    prefix: --free_text_search
- id: query
  doc: Query string, made up of filtering conditions, joined by logical ANDs, ORs
    and NOTs and bound by double quotes; the filter fields for a query are accessible
    with get_filter_fields and the type of filters with get_filter_types  [required]
  type: string
  inputBinding:
    prefix: --query
- id: result
  doc: Id of a result (accessible with get_results) [required]
  type: string
  inputBinding:
    prefix: --result
- id: display
  doc: Display option to specify the display format (accessible with get_display_options)  [required]
  type: string
  inputBinding:
    prefix: --display
- id: download
  doc: Download option to specify that records are to be saved in a file (used with
    file option, list accessible with get_download_options)
  type: string
  inputBinding:
    prefix: --download
- id: file
  doc: File to save the content of the search (used with download option)
  type: File
  inputBinding:
    prefix: --file
- id: fields
  doc: Fields to return (accessible with get_returnable_fields, used only for report
    as display value) [multiple or comma-separated]
  type: string
  inputBinding:
    prefix: --fields
- id: sort_fields
  doc: Fields to sort the results (accessible with get_sortable_fields, used only
    for report as display value) [multiple or comma-separated]
  type: string
  inputBinding:
    prefix: --sortfields
- id: offset
  doc: RANGE  First record to get (used only for display different of fasta and fastq
  type: long
  inputBinding:
    prefix: --offset
- id: length
  doc: RANGE  Number of records to retrieve (used only for display different of fasta
    and fastq
  type: long
  inputBinding:
    prefix: --length
outputs: []
cwlVersion: v1.1
baseCommand:
- enasearch
- search_data
