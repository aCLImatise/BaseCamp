version 1.0

task MergraphTh56mer {
  input {
    String? merMerCountFilePrefix
    String? merMerSize
    Int? minMinDepth
    String? prefixPrefixListToHash
    String? numNumThreads
    String? qualQualOffset
    String? outputOutputPrefix
    String? inputInputDescriptorFile
  }
  command <<<
    mergraphTh_56mer \
      ~{merMerCountFilePrefix} \
      ~{merMerSize} \
      ~{minMinDepth} \
      ~{prefixPrefixListToHash} \
      ~{numNumThreads} \
      ~{qualQualOffset} \
      ~{outputOutputPrefix} \
      ~{inputInputDescriptorFile}
  >>>
}