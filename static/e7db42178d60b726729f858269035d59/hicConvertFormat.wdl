version 1.0

task HicConvertFormat {
  input {
    Array[String]+ matricesMatrices
    Array[String]+ outOutFilename
    String inputInputFormat
    String outputOutputFormat
    String correctionCorrectionName
    Boolean correctionCorrectionDivision
    Boolean storeStoreAppliedCorrection
    String chromosomeChromosome
    Boolean enforceEnforceInteger
    Boolean loadLoadRawValues
    Array[String]+ resolutionsResolutions
    Array[String]+ bedBedFileHicPro
  }
  command <<<
    hicConvertFormat \
      ~{if defined(matricesMatrices) then ("--matrices " +  '"' + matricesMatrices + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{if defined(inputInputFormat) then ("--inputFormat " +  '"' + inputInputFormat + '"') else ""} \
      ~{if defined(outputOutputFormat) then ("--outputFormat " +  '"' + outputOutputFormat + '"') else ""} \
      ~{if defined(correctionCorrectionName) then ("--correction_name " +  '"' + correctionCorrectionName + '"') else ""} \
      ~{true="--correction_division" false="" correctionCorrectionDivision} \
      ~{true="--store_applied_correction" false="" storeStoreAppliedCorrection} \
      ~{if defined(chromosomeChromosome) then ("--chromosome " +  '"' + chromosomeChromosome + '"') else ""} \
      ~{true="--enforce_integer" false="" enforceEnforceInteger} \
      ~{true="--load_raw_values" false="" loadLoadRawValues} \
      ~{if defined(resolutionsResolutions) then ("--resolutions " +  '"' + resolutionsResolutions + '"') else ""} \
      ~{if defined(bedBedFileHicPro) then ("--bedFileHicpro " +  '"' + bedBedFileHicPro + '"') else ""}
  >>>
}