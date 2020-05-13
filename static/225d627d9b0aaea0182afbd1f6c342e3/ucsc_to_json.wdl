version 1.0

task UcscToJson.pl {
  input {
    String inIn
    String outOut
    String trackTrack
    String cssCssClass
    String primaryPrimaryName
    String arrowheadArrowheadClass
    String subSubFeatureClasses
    String clientClientConfig
    String nclNclChunk
    Boolean compressCompress
    String sortSortMem
  }
  command <<<
    ucsc-to-json.pl \
      ~{if defined(inIn) then ("--in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(trackTrack) then ("--track " +  '"' + trackTrack + '"') else ""} \
      ~{if defined(cssCssClass) then ("--cssClass " +  '"' + cssCssClass + '"') else ""} \
      ~{if defined(primaryPrimaryName) then ("--primaryName " +  '"' + primaryPrimaryName + '"') else ""} \
      ~{if defined(arrowheadArrowheadClass) then ("--arrowheadClass " +  '"' + arrowheadArrowheadClass + '"') else ""} \
      ~{if defined(subSubFeatureClasses) then ("--subfeatureClasses " +  '"' + subSubFeatureClasses + '"') else ""} \
      ~{if defined(clientClientConfig) then ("--clientConfig " +  '"' + clientClientConfig + '"') else ""} \
      ~{if defined(nclNclChunk) then ("--nclChunk " +  '"' + nclNclChunk + '"') else ""} \
      ~{true="--compress" false="" compressCompress} \
      ~{if defined(sortSortMem) then ("--sortMem " +  '"' + sortSortMem + '"') else ""}
  >>>
}