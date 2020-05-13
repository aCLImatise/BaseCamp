version 1.0

task Avro {
  input {
    String countCount
    String skipSkip
    String formatFormat
    Boolean headerHeader
    String filterFilter
    Boolean printPrintSchema
    String fieldsFields
    String schemaSchema
    String inputInputType
    String outputOutput
  }
  command <<<
    avro \
      ~{if defined(countCount) then ("--count " +  '"' + countCount + '"') else ""} \
      ~{if defined(skipSkip) then ("--skip " +  '"' + skipSkip + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{true="--header" false="" headerHeader} \
      ~{if defined(filterFilter) then ("--filter " +  '"' + filterFilter + '"') else ""} \
      ~{true="--print-schema" false="" printPrintSchema} \
      ~{if defined(fieldsFields) then ("--fields " +  '"' + fieldsFields + '"') else ""} \
      ~{if defined(schemaSchema) then ("--schema " +  '"' + schemaSchema + '"') else ""} \
      ~{if defined(inputInputType) then ("--input-type " +  '"' + inputInputType + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}