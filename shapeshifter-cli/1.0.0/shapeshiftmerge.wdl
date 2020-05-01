version 1.0

task Shapeshiftmerge {
  input {
    Array[String]+ inputInputFiles
    String outputOutputFile
    File outputOutputFileType
    Boolean gzipGzip
    String onOnColumn
    String howHow
  }
  command <<<
    shapeshiftmerge \
      ~{if defined(inputInputFiles) then ("--input_files " +  '"' + inputInputFiles + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output_file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(outputOutputFileType) then ("--output_file_type " +  '"' + outputOutputFileType + '"') else ""} \
      ~{true="--gzip" false="" gzipGzip} \
      ~{if defined(onOnColumn) then ("--on_column " +  '"' + onOnColumn + '"') else ""} \
      ~{if defined(howHow) then ("--how " +  '"' + howHow + '"') else ""}
  >>>
}