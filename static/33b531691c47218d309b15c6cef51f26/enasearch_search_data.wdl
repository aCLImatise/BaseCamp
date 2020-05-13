version 1.0

task EnasearchSearchData {
  input {
    Boolean freeFreeTextSearch
    String queryQuery
    String resultResult
    String displayDisplay
    String downloadDownload
    File fileFile
    String fieldsFields
    String sortSortFields
    Int offsetOffset
    Int lengthLength
  }
  command <<<
    enasearch search_data \
      ~{true="--free_text_search" false="" freeFreeTextSearch} \
      ~{if defined(queryQuery) then ("--query " +  '"' + queryQuery + '"') else ""} \
      ~{if defined(resultResult) then ("--result " +  '"' + resultResult + '"') else ""} \
      ~{if defined(displayDisplay) then ("--display " +  '"' + displayDisplay + '"') else ""} \
      ~{if defined(downloadDownload) then ("--download " +  '"' + downloadDownload + '"') else ""} \
      ~{if defined(fileFile) then ("--file " +  '"' + fileFile + '"') else ""} \
      ~{if defined(fieldsFields) then ("--fields " +  '"' + fieldsFields + '"') else ""} \
      ~{if defined(sortSortFields) then ("--sortfields " +  '"' + sortSortFields + '"') else ""} \
      ~{if defined(offsetOffset) then ("--offset " +  '"' + offsetOffset + '"') else ""} \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""}
  >>>
}