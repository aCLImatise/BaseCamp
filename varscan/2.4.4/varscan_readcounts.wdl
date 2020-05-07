version 1.0

task VarscanReadcounts {
  input {
    String variantsVariantsFile
    Boolean outputOutputFile
    Boolean minMinCoverage
    Int minMinBaseQual
  }
  command <<<
    varscan readcounts \
      ~{if defined(variantsVariantsFile) then ("--variants-file " +  '"' + variantsVariantsFile + '"') else ""} \
      ~{true="--output-file" false="" outputOutputFile} \
      ~{true="--min-coverage" false="" minMinCoverage} \
      ~{if defined(minMinBaseQual) then ("--min-base-qual " +  '"' + minMinBaseQual + '"') else ""}
  >>>
}