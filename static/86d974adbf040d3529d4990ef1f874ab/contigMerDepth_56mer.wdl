version 1.0

task ContigMerDepth56mer {
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
    contigMerDepth_56mer \
      ~{merMerCountFilePrefix} \
      ~{merMerSize} \
      ~{minMinDepth} \
      ~{prefixPrefixListToHash} \
      ~{numNumThreads} \
      ~{outputOutputPrefix} \
      ~{contigsContigsFile}
  >>>
}