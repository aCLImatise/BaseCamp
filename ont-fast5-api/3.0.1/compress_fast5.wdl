version 1.0

task CompressFast5 {
  input {
    String inputInputPath
    String saveSavePath
    Boolean inInPlace
    String compressionCompression
    String threadsThreads
    Boolean recursiveRecursive
    Boolean ignoreIgnoreSymlinks
  }
  command <<<
    compress_fast5 \
      ~{if defined(inputInputPath) then ("--input_path " +  '"' + inputInputPath + '"') else ""} \
      ~{if defined(saveSavePath) then ("--save_path " +  '"' + saveSavePath + '"') else ""} \
      ~{true="--in_place" false="" inInPlace} \
      ~{if defined(compressionCompression) then ("--compression " +  '"' + compressionCompression + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--recursive" false="" recursiveRecursive} \
      ~{true="--ignore_symlinks" false="" ignoreIgnoreSymlinks}
  >>>
}