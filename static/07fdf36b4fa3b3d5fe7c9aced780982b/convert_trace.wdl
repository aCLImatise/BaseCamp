version 1.0

task ConvertTrace {
  input {
    String inInFormat
    String outOutFormat
    File fofFofN
    String passedPassed
    String errorError
    String failedFailed
    String nameName
    Boolean subtractSubtractBackground
    String subtractSubtract
    Boolean normaliseNormalise
    Boolean minMinNormalise
    String scaleScale
    String compressCompress
    String abiAbiData
    Boolean signedSigned
    Boolean noneNoneG
    String explicitlyExplicitly
    String? inInFormat
    String? outOutFormat
    String? inIn
    String? outOut
  }
  command <<<
    convert_trace \
      ~{inInFormat} \
      ~{if defined(inInFormat) then ("-in_format " +  '"' + inInFormat + '"') else ""} \
      ~{if defined(outOutFormat) then ("-out_format " +  '"' + outOutFormat + '"') else ""} \
      ~{if defined(fofFofN) then ("-fofn " +  '"' + fofFofN + '"') else ""} \
      ~{if defined(passedPassed) then ("-passed " +  '"' + passedPassed + '"') else ""} \
      ~{if defined(errorError) then ("-error " +  '"' + errorError + '"') else ""} \
      ~{if defined(failedFailed) then ("-failed " +  '"' + failedFailed + '"') else ""} \
      ~{if defined(nameName) then ("-name " +  '"' + nameName + '"') else ""} \
      ~{true="-subtract_background" false="" subtractSubtractBackground} \
      ~{if defined(subtractSubtract) then ("-subtract " +  '"' + subtractSubtract + '"') else ""} \
      ~{true="-normalise" false="" normaliseNormalise} \
      ~{true="-min_normalise" false="" minMinNormalise} \
      ~{if defined(scaleScale) then ("-scale " +  '"' + scaleScale + '"') else ""} \
      ~{if defined(compressCompress) then ("-compress " +  '"' + compressCompress + '"') else ""} \
      ~{if defined(abiAbiData) then ("-abi_data " +  '"' + abiAbiData + '"') else ""} \
      ~{true="-signed" false="" signedSigned} \
      ~{true="-noneg" false="" noneNoneG} \
      ~{if defined(explicitlyExplicitly) then ("--                        Explicitly " +  '"' + explicitlyExplicitly + '"') else ""} \
      ~{outOutFormat} \
      ~{inIn} \
      ~{outOut}
  >>>
}