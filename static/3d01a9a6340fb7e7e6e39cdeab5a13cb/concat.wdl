version 1.0

task Concat {
  input {
    String concatConcatDirection
    Array[String]+ inputInputFilePaths
    File fileFileWildcard
    String outOutType
    String outOutName
    Array[String]+ fieldsFieldsToRemove
    Boolean removeRemoveAllMetadataFields
    Boolean resetResetIds
    String dataDataNull
    String metadataMetadataNull
    String fillerFillerNull
    Boolean verboseVerbose
    String errorErrorReportOutputFile
  }
  command <<<
    concat \
      ~{if defined(concatConcatDirection) then ("--concat_direction " +  '"' + concatConcatDirection + '"') else ""} \
      ~{if defined(inputInputFilePaths) then ("--input_filepaths " +  '"' + inputInputFilePaths + '"') else ""} \
      ~{if defined(fileFileWildcard) then ("--file_wildcard " +  '"' + fileFileWildcard + '"') else ""} \
      ~{if defined(outOutType) then ("--out_type " +  '"' + outOutType + '"') else ""} \
      ~{if defined(outOutName) then ("--out_name " +  '"' + outOutName + '"') else ""} \
      ~{if defined(fieldsFieldsToRemove) then ("--fields_to_remove " +  '"' + fieldsFieldsToRemove + '"') else ""} \
      ~{true="--remove_all_metadata_fields" false="" removeRemoveAllMetadataFields} \
      ~{true="--reset_ids" false="" resetResetIds} \
      ~{if defined(dataDataNull) then ("-data_null " +  '"' + dataDataNull + '"') else ""} \
      ~{if defined(metadataMetadataNull) then ("-metadata_null " +  '"' + metadataMetadataNull + '"') else ""} \
      ~{if defined(fillerFillerNull) then ("-filler_null " +  '"' + fillerFillerNull + '"') else ""} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{if defined(errorErrorReportOutputFile) then ("--error_report_output_file " +  '"' + errorErrorReportOutputFile + '"') else ""}
  >>>
}