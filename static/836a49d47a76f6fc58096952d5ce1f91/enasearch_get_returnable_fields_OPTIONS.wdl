version 1.0

task EnasearchGetReturnableFieldsOPTIONS {
  input {
    String resultResult
  }
  command <<<
    enasearch get_returnable_fields OPTIONS \
      ~{if defined(resultResult) then ("--result " +  '"' + resultResult + '"') else ""}
  >>>
}