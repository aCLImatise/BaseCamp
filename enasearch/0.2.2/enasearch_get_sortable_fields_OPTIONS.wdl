version 1.0

task EnasearchGetSortableFieldsOPTIONS {
  input {
    String resultResult
  }
  command <<<
    enasearch get_sortable_fields OPTIONS \
      ~{if defined(resultResult) then ("--result " +  '"' + resultResult + '"') else ""}
  >>>
}