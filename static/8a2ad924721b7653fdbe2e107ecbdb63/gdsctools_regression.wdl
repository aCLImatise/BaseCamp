version 1.0

task GdsctoolsRegression {
  input {
    String inputInputIc50
    String inputInputFeatures
    String inputInputDrugDecode
    String kKFold
    String outputOutputDirectory
    Boolean verboseVerbose
    Boolean forceForce
    String methodMethod
    Boolean licenseLicense
  }
  command <<<
    gdsctools_regression \
      ~{if defined(inputInputIc50) then ("--input-ic50 " +  '"' + inputInputIc50 + '"') else ""} \
      ~{if defined(inputInputFeatures) then ("--input-features " +  '"' + inputInputFeatures + '"') else ""} \
      ~{if defined(inputInputDrugDecode) then ("--input-drug-decode " +  '"' + inputInputDrugDecode + '"') else ""} \
      ~{if defined(kKFold) then ("--kfold " +  '"' + kKFold + '"') else ""} \
      ~{if defined(outputOutputDirectory) then ("--output-directory " +  '"' + outputOutputDirectory + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(methodMethod) then ("--method " +  '"' + methodMethod + '"') else ""} \
      ~{true="--license" false="" licenseLicense}
  >>>
}