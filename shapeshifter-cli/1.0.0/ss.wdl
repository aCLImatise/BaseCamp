version 1.0

task Ss {
  input {
    File inputInputFileType
    File outputOutputFileType
    Boolean transposeTranspose
    Boolean fF
    String columnsColumns
    Boolean allAllColumns
    Boolean gzipGzip
    String setSetIndex
    String? inputInputFile
    String? outputOutputFile
  }
  command <<<
    ss \
      ~{inputInputFile} \
      ~{if defined(inputInputFileType) then ("--input_file_type " +  '"' + inputInputFileType + '"') else ""} \
      ~{if defined(outputOutputFileType) then ("--output_file_type " +  '"' + outputOutputFileType + '"') else ""} \
      ~{true="--transpose" false="" transposeTranspose} \
      ~{true="-f" false="" fF} \
      ~{if defined(columnsColumns) then ("--columns " +  '"' + columnsColumns + '"') else ""} \
      ~{true="--all_columns" false="" allAllColumns} \
      ~{true="--gzip" false="" gzipGzip} \
      ~{if defined(setSetIndex) then ("--set_index " +  '"' + setSetIndex + '"') else ""} \
      ~{outputOutputFile}
  >>>
}