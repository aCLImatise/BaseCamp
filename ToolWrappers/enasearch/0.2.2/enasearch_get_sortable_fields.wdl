version 1.0

task EnasearchGetSortableFields {
  input {
    String? result
  }
  command <<<
    enasearch get_sortable_fields \
      ~{if defined(result) then ("--result " +  '"' + result + '"') else ""}
  >>>
  parameter_meta {
    result: "Id of a result (accessible with get_results)  [required]"
  }
  output {
    File out_stdout = stdout()
  }
}