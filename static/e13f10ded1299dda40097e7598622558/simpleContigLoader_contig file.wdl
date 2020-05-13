version 1.0

task SimpleContigLoaderContig file {
  input {
    String? bankBankPath
    String? contigContigFile
  }
  command <<<
    simpleContigLoader contig file \
      ~{bankBankPath} \
      ~{contigContigFile}
  >>>
}