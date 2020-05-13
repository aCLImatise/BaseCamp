version 1.0

task FlatfileToJson.pl {
  input {
    String gbkGbk
    String trackTrackLabel
    Boolean subSubFeatureClasses
    Boolean clientClientConfig
    Boolean configConfig
    String nclNclChunk
    Boolean compressCompress
    String sortSortMem
    Int maxMaxLookBack
    String thickThickType
  }
  command <<<
    flatfile-to-json.pl \
      ~{if defined(gbkGbk) then ("--gbk " +  '"' + gbkGbk + '"') else ""} \
      ~{if defined(trackTrackLabel) then ("--trackLabel " +  '"' + trackTrackLabel + '"') else ""} \
      ~{true="--subfeatureClasses" false="" subSubFeatureClasses} \
      ~{true="--clientConfig" false="" clientClientConfig} \
      ~{true="--config" false="" configConfig} \
      ~{if defined(nclNclChunk) then ("--nclChunk " +  '"' + nclNclChunk + '"') else ""} \
      ~{true="--compress" false="" compressCompress} \
      ~{if defined(sortSortMem) then ("--sortMem " +  '"' + sortSortMem + '"') else ""} \
      ~{if defined(maxMaxLookBack) then ("--maxLookback " +  '"' + maxMaxLookBack + '"') else ""} \
      ~{if defined(thickThickType) then ("--thickType " +  '"' + thickThickType + '"') else ""}
  >>>
}