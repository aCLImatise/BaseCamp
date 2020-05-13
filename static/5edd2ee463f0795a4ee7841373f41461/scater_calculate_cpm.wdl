version 1.0

task ScaterCalculateCpm.R {
  input {
    String inputInputObjectFile
    String exprsExprsValues
    Int sizeSizeFactors
    String outputOutputObjectFile
    String outputOutputTextFile
  }
  command <<<
    scater-calculate-cpm.R \
      ~{if defined(inputInputObjectFile) then ("--input-object-file " +  '"' + inputInputObjectFile + '"') else ""} \
      ~{if defined(exprsExprsValues) then ("--exprs-values " +  '"' + exprsExprsValues + '"') else ""} \
      ~{if defined(sizeSizeFactors) then ("--size-factors " +  '"' + sizeSizeFactors + '"') else ""} \
      ~{if defined(outputOutputObjectFile) then ("--output-object-file " +  '"' + outputOutputObjectFile + '"') else ""} \
      ~{if defined(outputOutputTextFile) then ("--output-text-file " +  '"' + outputOutputTextFile + '"') else ""}
  >>>
}