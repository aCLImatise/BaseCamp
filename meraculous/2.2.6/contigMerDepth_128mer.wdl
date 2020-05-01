version 1.0

task ContigMerDepth128mer {
  input {
    String? merMerCountFilePrefix
    String? merMerSize
    Int? minMinDepth
    String? prefixPrefixListToHash
    String? numNumThreads
    String? outputOutputPrefix
    String? contigsContigsFile
  }
  command <<<
    contigMerDepth_128mer \
      ~{merMerCountFilePrefix} \
      ~{merMerSize} \
      ~{minMinDepth} \
      ~{prefixPrefixListToHash} \
      ~{numNumThreads} \
      ~{outputOutputPrefix} \
      ~{contigsContigsFile}
  >>>
}