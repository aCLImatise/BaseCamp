version 1.0

task EnasearchSearchData {
  input {
    Boolean? free_text_search
    String? query
    String? result
    String? display
    File? download
    File? file
    String? fields
    String? sort_fields
    Int? offset
    Int? length
  }
  command <<<
    enasearch search_data \
      ~{if (free_text_search) then "--free_text_search" else ""} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(result) then ("--result " +  '"' + result + '"') else ""} \
      ~{if defined(display) then ("--display " +  '"' + display + '"') else ""} \
      ~{if defined(download) then ("--download " +  '"' + download + '"') else ""} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{if defined(fields) then ("--fields " +  '"' + fields + '"') else ""} \
      ~{if defined(sort_fields) then ("--sortfields " +  '"' + sort_fields + '"') else ""} \
      ~{if defined(offset) then ("--offset " +  '"' + offset + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""}
  >>>
  parameter_meta {
    free_text_search: "Use free text search, otherwise the data warehouse\\nis used"
    query: "Query string, made up of filtering conditions,\\njoined by logical ANDs, ORs and NOTs and bound by\\ndouble quotes; the filter fields for a query are\\naccessible with get_filter_fields and the type of\\nfilters with get_filter_types  [required]"
    result: "Id of a result (accessible with get_results)\\n[required]"
    display: "Display option to specify the display format\\n(accessible with get_display_options)  [required]"
    download: "Download option to specify that records are to be\\nsaved in a file (used with file option, list\\naccessible with get_download_options)"
    file: "File to save the content of the search (used with\\ndownload option)"
    fields: "Fields to return (accessible with\\nget_returnable_fields, used only for report as\\ndisplay value) [multiple or comma-separated]"
    sort_fields: "Fields to sort the results (accessible with\\nget_sortable_fields, used only for report as display\\nvalue) [multiple or comma-separated]"
    offset: "RANGE  First record to get (used only for display different\\nof fasta and fastq"
    length: "RANGE  Number of records to retrieve (used only for display\\ndifferent of fasta and fastq"
  }
  output {
    File out_stdout = stdout()
  }
}