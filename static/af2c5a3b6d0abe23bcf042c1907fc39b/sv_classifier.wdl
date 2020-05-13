version 1.0

task SvClassifier.py {
  input {
    String inputInput
    File genderGender
    File excludeExclude
    String annotationAnnotation
    Float fractionFraction
    Float slopeSlopeThreshold
    Float rRSquaredThreshold
  }
  command <<<
    sv_classifier.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(genderGender) then ("--gender " +  '"' + genderGender + '"') else ""} \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{if defined(annotationAnnotation) then ("--annotation " +  '"' + annotationAnnotation + '"') else ""} \
      ~{if defined(fractionFraction) then ("--fraction " +  '"' + fractionFraction + '"') else ""} \
      ~{if defined(slopeSlopeThreshold) then ("--slope_threshold " +  '"' + slopeSlopeThreshold + '"') else ""} \
      ~{if defined(rRSquaredThreshold) then ("--rsquared_threshold " +  '"' + rRSquaredThreshold + '"') else ""}
  >>>
}