version 1.0

task Msconvert {
  input {
    Boolean mz64Mz64
    Boolean mz32Mz32
    Boolean inten64Inten64
    Boolean inten32Inten32
    Boolean noNoIndex
    Boolean iI
    Boolean zZ
    Boolean numNumPressLinear
    Boolean numNumPressPic
    Boolean numNumPressSlOf
    Boolean nN
    Boolean gG
    String filterFilter
    Boolean mergeMerge
    Boolean simasSimasSpectra
    Boolean srmSrmAsSpectra
    Boolean combineCombineIonMobilitySpectra
    Boolean acceptAcceptZeroLengthSpectra
    Boolean ignoreIgnoreUnknownInstrumentError
    File? fileFileMasks
  }
  command <<<
    msconvert \
      ~{fileFileMasks} \
      ~{true="--mz64" false="" mz64Mz64} \
      ~{true="--mz32" false="" mz32Mz32} \
      ~{true="--inten64" false="" inten64Inten64} \
      ~{true="--inten32" false="" inten32Inten32} \
      ~{true="--noindex" false="" noNoIndex} \
      ~{true="-i" false="" iI} \
      ~{true="-z" false="" zZ} \
      ~{true="--numpressLinear" false="" numNumPressLinear} \
      ~{true="--numpressPic" false="" numNumPressPic} \
      ~{true="--numpressSlof" false="" numNumPressSlOf} \
      ~{true="-n" false="" nN} \
      ~{true="-g" false="" gG} \
      ~{if defined(filterFilter) then ("--filter " +  '"' + filterFilter + '"') else ""} \
      ~{true="--merge" false="" mergeMerge} \
      ~{true="--simAsSpectra" false="" simasSimasSpectra} \
      ~{true="--srmAsSpectra" false="" srmSrmAsSpectra} \
      ~{true="--combineIonMobilitySpectra" false="" combineCombineIonMobilitySpectra} \
      ~{true="--acceptZeroLengthSpectra" false="" acceptAcceptZeroLengthSpectra} \
      ~{true="--ignoreUnknownInstrumentError" false="" ignoreIgnoreUnknownInstrumentError}
  >>>
}