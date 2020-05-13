version 1.0

task MglexCliEvaluate {
  input {
    File dataData
    File responsibilityResponsibility
    File weightWeight
    String methodMethod
    Int subsampleSubsample
    Int randomRandomSeed
    Boolean bB
    String? evaluateEvaluate
    String? evaluateEvaluate
  }
  command <<<
    mglex-cli evaluate \
      ~{evaluateEvaluate} \
      ~{if defined(dataData) then ("--data " +  '"' + dataData + '"') else ""} \
      ~{if defined(responsibilityResponsibility) then ("--responsibility " +  '"' + responsibilityResponsibility + '"') else ""} \
      ~{if defined(weightWeight) then ("--weight " +  '"' + weightWeight + '"') else ""} \
      ~{if defined(methodMethod) then ("--method " +  '"' + methodMethod + '"') else ""} \
      ~{if defined(subsampleSubsample) then ("--subsample " +  '"' + subsampleSubsample + '"') else ""} \
      ~{if defined(randomRandomSeed) then ("--random-seed " +  '"' + randomRandomSeed + '"') else ""} \
      ~{true="-b" false="" bB} \
      ~{evaluateEvaluate}
  >>>
}