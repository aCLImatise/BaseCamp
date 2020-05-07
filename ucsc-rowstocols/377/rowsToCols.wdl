version 1.0

task RowsToCols {
  input {
    String varVarCol
    String fieldsFields
    String fieldsFields
    String fieldsFields
    String offsetsOffsets
    String? inInTxt
    String? outOutTxt
  }
  command <<<
    rowsToCols \
      ~{inInTxt} \
      ~{if defined(varVarCol) then ("-varCol " +  '"' + varVarCol + '"') else ""} \
      ~{if defined(fieldsFields) then ("- fields " +  '"' + fieldsFields + '"') else ""} \
      ~{if defined(fieldsFields) then ("- fields " +  '"' + fieldsFields + '"') else ""} \
      ~{if defined(fieldsFields) then ("- fields " +  '"' + fieldsFields + '"') else ""} \
      ~{if defined(offsetsOffsets) then ("-offsets " +  '"' + offsetsOffsets + '"') else ""} \
      ~{outOutTxt}
  >>>
}