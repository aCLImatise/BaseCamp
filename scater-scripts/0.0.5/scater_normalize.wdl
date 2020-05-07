version 1.0

task ScaterNormalize.R {
  input {
    String inputInputObjectFile
    String exprsExprsValues
    String returnReturnLog
    String logLogExprsOffset
    String centreCentreSizeFactors
    String outputOutputObjectFile
  }
  command <<<
    scater-normalize.R \
      ~{if defined(inputInputObjectFile) then ("--input-object-file " +  '"' + inputInputObjectFile + '"') else ""} \
      ~{if defined(exprsExprsValues) then ("--exprs-values " +  '"' + exprsExprsValues + '"') else ""} \
      ~{if defined(returnReturnLog) then ("--return-log " +  '"' + returnReturnLog + '"') else ""} \
      ~{if defined(logLogExprsOffset) then ("--log-exprs-offset " +  '"' + logLogExprsOffset + '"') else ""} \
      ~{if defined(centreCentreSizeFactors) then ("--centre-size-factors " +  '"' + centreCentreSizeFactors + '"') else ""} \
      ~{if defined(outputOutputObjectFile) then ("--output-object-file " +  '"' + outputOutputObjectFile + '"') else ""}
  >>>
}