version 1.0

task EnasearchGetFilterFieldsOPTIONS {
  input {
    String resultResult
  }
  command <<<
    enasearch get_filter_fields OPTIONS \
      ~{if defined(resultResult) then ("--result " +  '"' + resultResult + '"') else ""}
  >>>
}