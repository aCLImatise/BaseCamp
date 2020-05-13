version 1.0

task MultipleFieldSelection.py {
  input {
    Array[String]+ inputInputFiles
    String keyKeyField
    Array[String]+ fieldsFields
    String separatorSeparator
    String outputOutputFile
    Boolean noNoHeader
  }
  command <<<
    multipleFieldSelection.py \
      ~{if defined(inputInputFiles) then ("--input-files " +  '"' + inputInputFiles + '"') else ""} \
      ~{if defined(keyKeyField) then ("--key-field " +  '"' + keyKeyField + '"') else ""} \
      ~{if defined(fieldsFields) then ("--fields " +  '"' + fieldsFields + '"') else ""} \
      ~{if defined(separatorSeparator) then ("--separator " +  '"' + separatorSeparator + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{true="--no-header" false="" noNoHeader}
  >>>
}