version 1.0

task SnpSiftFilter {
  input {
    String addAddFilter
    File exprExprFile
    String fileFile
    String filterFilterId
    Boolean inverseInverse
    Boolean passPass
    String rmRmFilter
    File setSet
    Boolean errErrMissing
    String formatFormat
    Boolean galaxyGalaxy
  }
  command <<<
    SnpSift filter \
      ~{if defined(addAddFilter) then ("--addFilter " +  '"' + addAddFilter + '"') else ""} \
      ~{if defined(exprExprFile) then ("--exprFile " +  '"' + exprExprFile + '"') else ""} \
      ~{if defined(fileFile) then ("--file " +  '"' + fileFile + '"') else ""} \
      ~{if defined(filterFilterId) then ("--filterId " +  '"' + filterFilterId + '"') else ""} \
      ~{true="--inverse" false="" inverseInverse} \
      ~{true="--pass" false="" passPass} \
      ~{if defined(rmRmFilter) then ("--rmFilter " +  '"' + rmRmFilter + '"') else ""} \
      ~{if defined(setSet) then ("--set " +  '"' + setSet + '"') else ""} \
      ~{true="--errMissing" false="" errErrMissing} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{true="--galaxy" false="" galaxyGalaxy}
  >>>
}