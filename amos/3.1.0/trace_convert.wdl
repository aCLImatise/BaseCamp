version 1.0

task TraceConvert {
  input {
    String inInFormat
    String outOutFormat
    File fofFofN
    String passedPassed
    String errorError
    String failedFailed
    String nameName
    Boolean subtractSubtractBackground
    Boolean normaliseNormalise
    String scaleScale
    String compressCompress
    String abiAbiData
    String explicitlyExplicitly
    String? convertConvertTrace
    String? inInFormat
    String? outOutFormat
    String? inIn
    String? outOut
  }
  command <<<
    trace_convert \
      ~{convertConvertTrace} \
      ~{if defined(inInFormat) then ("-in_format " +  '"' + inInFormat + '"') else ""} \
      ~{if defined(outOutFormat) then ("-out_format " +  '"' + outOutFormat + '"') else ""} \
      ~{if defined(fofFofN) then ("-fofn " +  '"' + fofFofN + '"') else ""} \
      ~{if defined(passedPassed) then ("-passed " +  '"' + passedPassed + '"') else ""} \
      ~{if defined(errorError) then ("-error " +  '"' + errorError + '"') else ""} \
      ~{if defined(failedFailed) then ("-failed " +  '"' + failedFailed + '"') else ""} \
      ~{if defined(nameName) then ("-name " +  '"' + nameName + '"') else ""} \
      ~{true="-subtract_background" false="" subtractSubtractBackground} \
      ~{true="-normalise" false="" normaliseNormalise} \
      ~{if defined(scaleScale) then ("-scale " +  '"' + scaleScale + '"') else ""} \
      ~{if defined(compressCompress) then ("-compress " +  '"' + compressCompress + '"') else ""} \
      ~{if defined(abiAbiData) then ("-abi_data " +  '"' + abiAbiData + '"') else ""} \
      ~{if defined(explicitlyExplicitly) then ("--                        Explicitly " +  '"' + explicitlyExplicitly + '"') else ""} \
      ~{inInFormat} \
      ~{outOutFormat} \
      ~{inIn} \
      ~{outOut}
  >>>
}