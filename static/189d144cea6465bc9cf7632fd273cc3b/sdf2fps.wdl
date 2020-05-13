version 1.0

task Sdf2fps {
  input {
    String idIdTag
    String fpFpTag
    String inIn
    Int numNumBits
    String errorsErrors
    File outputOutput
    String outOut
    String softwareSoftware
    String typeType
    Boolean binaryBinary
    Boolean binaryBinaryMsb
    Boolean hexHex
    Boolean hexHexLsb
    Boolean hexHexMsb
    Boolean base64Base64
    Boolean cacCacTvs
    Boolean daylightDaylight
    String decoderDecoder
    Boolean pubchemPubchem
    File? filenamesFilenames
  }
  command <<<
    sdf2fps \
      ~{filenamesFilenames} \
      ~{if defined(idIdTag) then ("--id-tag " +  '"' + idIdTag + '"') else ""} \
      ~{if defined(fpFpTag) then ("--fp-tag " +  '"' + fpFpTag + '"') else ""} \
      ~{if defined(inIn) then ("--in " +  '"' + inIn + '"') else ""} \
      ~{if defined(numNumBits) then ("--num-bits " +  '"' + numNumBits + '"') else ""} \
      ~{if defined(errorsErrors) then ("--errors " +  '"' + errorsErrors + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(softwareSoftware) then ("--software " +  '"' + softwareSoftware + '"') else ""} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{true="--binary" false="" binaryBinary} \
      ~{true="--binary-msb" false="" binaryBinaryMsb} \
      ~{true="--hex" false="" hexHex} \
      ~{true="--hex-lsb" false="" hexHexLsb} \
      ~{true="--hex-msb" false="" hexHexMsb} \
      ~{true="--base64" false="" base64Base64} \
      ~{true="--cactvs" false="" cacCacTvs} \
      ~{true="--daylight" false="" daylightDaylight} \
      ~{if defined(decoderDecoder) then ("--decoder " +  '"' + decoderDecoder + '"') else ""} \
      ~{true="--pubchem" false="" pubchemPubchem}
  >>>
}