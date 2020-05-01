version 1.0

task Fast5Subset {
  input {
    String inputInput
    String saveSavePath
    String readReadIdList
    File filenameFilenameBase
    String batchBatchSize
    String threadsThreads
    Boolean recursiveRecursive
    Boolean ignoreIgnoreSymlinks
    File fileFileList
    String? toolTool
    String? forFor
    String? extractingExtracting
    String? readsReads
    String? fromFrom
    String? aA
    String? multiMultiReadFast5File
    String? byBy
    String? readReadId
  }
  command <<<
    fast5_subset \
      ~{toolTool} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(saveSavePath) then ("--save_path " +  '"' + saveSavePath + '"') else ""} \
      ~{if defined(readReadIdList) then ("--read_id_list " +  '"' + readReadIdList + '"') else ""} \
      ~{if defined(filenameFilenameBase) then ("--filename_base " +  '"' + filenameFilenameBase + '"') else ""} \
      ~{if defined(batchBatchSize) then ("--batch_size " +  '"' + batchBatchSize + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--recursive" false="" recursiveRecursive} \
      ~{true="--ignore_symlinks" false="" ignoreIgnoreSymlinks} \
      ~{if defined(fileFileList) then ("--file_list " +  '"' + fileFileList + '"') else ""} \
      ~{forFor} \
      ~{extractingExtracting} \
      ~{readsReads} \
      ~{fromFrom} \
      ~{aA} \
      ~{multiMultiReadFast5File} \
      ~{byBy} \
      ~{readReadId}
  >>>
}