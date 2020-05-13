version 1.0

task SampleGender {
  input {
    File inIn
    String methodMethod
    File outOut
    Float maxMaxFemale
    Float minMinMale
    Float minMinFemale
    Float maxMaxMale
    Float srySryCov
    String buildBuild
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    SampleGender \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(methodMethod) then ("-method " +  '"' + methodMethod + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(maxMaxFemale) then ("-max_female " +  '"' + maxMaxFemale + '"') else ""} \
      ~{if defined(minMinMale) then ("-min_male " +  '"' + minMinMale + '"') else ""} \
      ~{if defined(minMinFemale) then ("-min_female " +  '"' + minMinFemale + '"') else ""} \
      ~{if defined(maxMaxMale) then ("-max_male " +  '"' + maxMaxMale + '"') else ""} \
      ~{if defined(srySryCov) then ("-sry_cov " +  '"' + srySryCov + '"') else ""} \
      ~{if defined(buildBuild) then ("-build " +  '"' + buildBuild + '"') else ""} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}