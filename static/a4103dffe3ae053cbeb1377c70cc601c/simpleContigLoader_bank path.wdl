version 1.0

task SimpleContigLoaderBank path {
  input {
    String? contigContigFile
  }
  command <<<
    simpleContigLoader bank path \
      ~{contigContigFile}
  >>>
}