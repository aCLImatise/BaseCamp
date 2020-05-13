version 1.0

task Ob2fps {
  input {
    Boolean fp2Fp2
    Boolean fp3Fp3
    Boolean fp4Fp4
    Boolean macMacCs
    Boolean subSubStruct
    Boolean rdmaRdmaCcs
    Boolean rdmaRdmaCcs
    String idIdTag
    String inIn
    File outputOutput
    String outOut
    String errorsErrors
    File? filenamesFilenames
  }
  command <<<
    ob2fps \
      ~{filenamesFilenames} \
      ~{true="--FP2" false="" fp2Fp2} \
      ~{true="--FP3" false="" fp3Fp3} \
      ~{true="--FP4" false="" fp4Fp4} \
      ~{true="--MACCS" false="" macMacCs} \
      ~{true="--substruct" false="" subSubStruct} \
      ~{true="--rdmaccs" false="" rdmaRdmaCcs} \
      ~{true="--rdmaccs" false="" rdmaRdmaCcs} \
      ~{if defined(idIdTag) then ("--id-tag " +  '"' + idIdTag + '"') else ""} \
      ~{if defined(inIn) then ("--in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(errorsErrors) then ("--errors " +  '"' + errorsErrors + '"') else ""}
  >>>
}