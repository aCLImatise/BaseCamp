version 1.0

task MerCounterTh56mer {
  input {
    String? merMerSize
    Int? minMinCountToReport
    String? numNumThreads
    String? prefixPrefixListToHash
    String? outputOutputPrefix
    String? fastFastQDescriptorFile
    String? trimTrimFlag
  }
  command <<<
    merCounterTh_56mer \
      ~{merMerSize} \
      ~{minMinCountToReport} \
      ~{numNumThreads} \
      ~{prefixPrefixListToHash} \
      ~{outputOutputPrefix} \
      ~{fastFastQDescriptorFile} \
      ~{trimTrimFlag}
  >>>
}