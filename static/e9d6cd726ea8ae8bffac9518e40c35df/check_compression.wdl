version 1.0

task CheckCompression {
  input {
    String inputInputPath
    Boolean checkCheckAllReads
    Boolean recursiveRecursive
    Boolean ignoreIgnoreSymlinks
    File fileFileList
    String? toolTool
    String? forFor
    String? checkingChecking
    String? theThe
    String? compressionCompression
    String? typeType
    String? ofOf
    String? rawRaw
    String? dataData
    String? inIn
    String? fast5Fast5
    File? filesFiles
  }
  command <<<
    check_compression \
      ~{toolTool} \
      ~{if defined(inputInputPath) then ("--input_path " +  '"' + inputInputPath + '"') else ""} \
      ~{true="--check_all_reads" false="" checkCheckAllReads} \
      ~{true="--recursive" false="" recursiveRecursive} \
      ~{true="--ignore_symlinks" false="" ignoreIgnoreSymlinks} \
      ~{if defined(fileFileList) then ("--file_list " +  '"' + fileFileList + '"') else ""} \
      ~{forFor} \
      ~{checkingChecking} \
      ~{theThe} \
      ~{compressionCompression} \
      ~{typeType} \
      ~{ofOf} \
      ~{rawRaw} \
      ~{dataData} \
      ~{inIn} \
      ~{fast5Fast5} \
      ~{filesFiles}
  >>>
}