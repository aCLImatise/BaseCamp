version 1.0

task MeraculousTh128mer {
  input {
    String? uUFxFileWildcard
    String? merMerSize
    String? numNumThreads
    String? outputOutputFile
    String? expectedExpectedNumElements
    Int? minMin
    String? contigContig
    Int? sizeSize
    String? debugDebugMode
    String? seedSeedListFilename
  }
  command <<<
    meraculousTh_128mer \
      ~{uUFxFileWildcard} \
      ~{merMerSize} \
      ~{numNumThreads} \
      ~{outputOutputFile} \
      ~{expectedExpectedNumElements} \
      ~{minMin} \
      ~{contigContig} \
      ~{sizeSize} \
      ~{debugDebugMode} \
      ~{seedSeedListFilename}
  >>>
}